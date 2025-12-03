@interface TCColorPalettizer
- (BOOL)addQuadColor:(_tagRgbQuad)color;
- (BOOL)addTSUColor:(id)color;
- (id)getPaletteData;
- (id)getPaletteDataRaw;
- (id)getPngPaletteData;
- (id)initWitDefaultPaletteSize;
- (id)initWitMaxPaletteSize:(unsigned int)size;
- (int)addPixelToOctree:(_tagOctree *)octree pixel:(_tagRgbQuad)pixel;
- (int)createNodeOctree:(_tagOctreeNode *)octree parent:(_tagOctreeNode *)parent;
- (int)createOctree:(_tagOctree *)octree maxPaletteSize:(unsigned __int16)size;
- (int)deleteListOctree:(_tagLevelItem *)octree;
- (int)deleteNodeOctree:(_tagOctreeNode *)octree;
- (int)deleteOctree:(_tagOctree *)octree;
- (int)paletteIndexFromQuadColor:(_tagRgbQuad)color;
- (int)paletteIndexFromTSUColor:(id)color;
- (int)reduceOctree:(_tagOctree *)octree;
- (int)rgbToIndexOctree:(_tagOctree *)octree source:(_tagRgbQuad)source destination:(char *)destination;
- (unsigned)getPaletteFromOctree:(_tagOctreeNode *)octree paletteEntry:(_tagRgbQuad *)entry index:(unsigned __int16)index;
- (unsigned)paletteColorCount;
- (void)createPalette;
- (void)dealloc;
@end

@implementation TCColorPalettizer

- (id)initWitMaxPaletteSize:(unsigned int)size
{
  sizeCopy = size;
  v7.receiver = self;
  v7.super_class = TCColorPalettizer;
  v4 = [(TCColorPalettizer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TCColorPalettizer *)v4 createOctree:&v4->m_pTree maxPaletteSize:sizeCopy];
    v5->isDefaultPaletteSize = 0;
  }

  return v5;
}

- (id)initWitDefaultPaletteSize
{
  v5.receiver = self;
  v5.super_class = TCColorPalettizer;
  v2 = [(TCColorPalettizer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TCColorPalettizer *)v2 createOctree:&v2->m_pTree maxPaletteSize:54];
    v3->isDefaultPaletteSize = 1;
  }

  return v3;
}

- (void)dealloc
{
  if (self->m_pTree)
  {
    [(TCColorPalettizer *)self deleteOctree:?];
  }

  v3.receiver = self;
  v3.super_class = TCColorPalettizer;
  [(TCColorPalettizer *)&v3 dealloc];
}

- (BOOL)addTSUColor:(id)color
{
  if (!color || !self->m_pTree)
  {
    return 0;
  }

  [color redComponent];
  v6 = (v5 * 255.0);
  [color greenComponent];
  v8 = (v7 * 255.0);
  [color blueComponent];

  return [(TCColorPalettizer *)self addQuadColor:(v6 << 16) | (v8 << 8) | (v9 * 255.0)];
}

- (BOOL)addQuadColor:(_tagRgbQuad)color
{
  if (!self->m_pTree)
  {
    return 0;
  }

  if (!self->isDefaultPaletteSize || ((color.var2 | color.var1) | color.var0 ? (v4 = (*&color & 0xFFFFFF) == 0xFFFFFF) : (v4 = 1), !v4))
  {
    if ([TCColorPalettizer addPixelToOctree:"addPixelToOctree:pixel:" pixel:?])
    {
LABEL_8:
      [(TCColorPalettizer *)self deleteOctree:self->m_pTree];
      result = 0;
      self->m_pTree = 0;
      return result;
    }

    while (self->m_pTree->var2 > self->m_pTree->var1)
    {
      if ([(TCColorPalettizer *)self reduceOctree:?])
      {
        goto LABEL_8;
      }
    }
  }

  return 1;
}

- (void)createPalette
{
  m_pTree = self->m_pTree;
  if (m_pTree)
  {
    self->m_pTree->var2 = [(TCColorPalettizer *)self getPaletteFromOctree:m_pTree->var0 paletteEntry:m_pTree->var3 index:0];
  }
}

- (unsigned)paletteColorCount
{
  m_pTree = self->m_pTree;
  if (!m_pTree)
  {
    return 0;
  }

  var2 = m_pTree->var2;
  if (self->isDefaultPaletteSize)
  {
    return var2 + 2;
  }

  else
  {
    return var2;
  }
}

- (id)getPaletteDataRaw
{
  m_pTree = self->m_pTree;
  if (!m_pTree || !m_pTree->var2)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEB28] dataWithCapacity:0];
  v5 = v4;
  if (self->isDefaultPaletteSize)
  {
    v7 = 0;
    [v4 appendBytes:&v7 length:1];
    [v5 appendBytes:&v7 length:1];
    [v5 appendBytes:&v7 length:1];
    [v5 appendBytes:&v7 length:1];
    v7 = -1;
    [v5 appendBytes:&v7 length:1];
    [v5 appendBytes:&v7 length:1];
    [v5 appendBytes:&v7 length:1];
    v7 = 0;
    [v5 appendBytes:&v7 length:1];
  }

  [v5 appendBytes:self->m_pTree->var3 length:4 * self->m_pTree->var2];
  return v5;
}

- (id)getPngPaletteData
{
  m_pTree = self->m_pTree;
  if (!m_pTree || !m_pTree->var2)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEB28] dataWithCapacity:0];
  v5 = v4;
  var2 = 0;
  if (self->isDefaultPaletteSize)
  {
    [v4 appendBytes:&var2 length:1];
    [v5 appendBytes:&var2 length:1];
    [v5 appendBytes:&var2 length:1];
    var2 = -1;
    [v5 appendBytes:&var2 length:1];
    [v5 appendBytes:&var2 length:1];
    [v5 appendBytes:&var2 length:1];
  }

  v6 = self->m_pTree;
  if (v6->var2)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = &v6->var3[v7];
      var0 = v9->var0;
      var1 = v9->var1;
      var2 = v9->var2;
      [v5 appendBytes:&var2 length:1];
      var2 = var1;
      [v5 appendBytes:&var2 length:1];
      var2 = var0;
      [v5 appendBytes:&var2 length:1];
      ++v8;
      v6 = self->m_pTree;
      ++v7;
    }

    while (v8 < v6->var2);
  }

  return v5;
}

- (id)getPaletteData
{
  m_pTree = self->m_pTree;
  if (!m_pTree || !m_pTree->var2)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEB28] dataWithCapacity:0];
  v5 = v4;
  v14 = 0;
  if (self->isDefaultPaletteSize)
  {
    [v4 appendBytes:&v14 length:1];
    [v5 appendBytes:&v14 length:1];
    [v5 appendBytes:&v14 length:1];
    [v5 appendBytes:&v14 length:1];
    [v5 appendBytes:&v14 length:1];
    v14 = -1;
    [v5 appendBytes:&v14 length:1];
    [v5 appendBytes:&v14 length:1];
    [v5 appendBytes:&v14 length:1];
  }

  v6 = self->m_pTree;
  if (v6->var2)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = &v6->var3[v7];
      var0 = v9->var0;
      var1 = v9->var1;
      var2 = v9->var2;
      v14 = 0;
      [v5 appendBytes:&v14 length:1];
      v14 = var0;
      [v5 appendBytes:&v14 length:1];
      v14 = var1;
      [v5 appendBytes:&v14 length:1];
      v14 = var2;
      [v5 appendBytes:&v14 length:1];
      ++v8;
      v6 = self->m_pTree;
      ++v7;
    }

    while (v8 < v6->var2);
  }

  return v5;
}

- (int)paletteIndexFromTSUColor:(id)color
{
  if (!self->m_pTree)
  {
    return -1;
  }

  [color redComponent];
  v6 = (v5 * 255.0);
  [color greenComponent];
  v8 = (v7 * 255.0);
  [color blueComponent];

  return [(TCColorPalettizer *)self paletteIndexFromQuadColor:(v6 << 16) | (v8 << 8) | (v9 * 255.0)];
}

- (int)paletteIndexFromQuadColor:(_tagRgbQuad)color
{
  if (!self->m_pTree)
  {
    return -1;
  }

  if (self->isDefaultPaletteSize)
  {
    if (!((color.var2 | color.var1) | color.var0))
    {
      return 0;
    }

    if ((~*&color & 0xFFFFFF) == 0)
    {
      return 1;
    }
  }

  if ([TCColorPalettizer rgbToIndexOctree:"rgbToIndexOctree:source:destination:" source:? destination:?])
  {
    return -1;
  }

  if (self->isDefaultPaletteSize)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (int)createOctree:(_tagOctree *)octree maxPaletteSize:(unsigned __int16)size
{
  sizeCopy = size;
  v7 = malloc_type_malloc(0x60uLL, 0x10200403BC0D067uLL);
  *octree = v7;
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v7->var0 = 0;
  v7->var1 = sizeCopy;
  v7->var2 = 0;
  *&v7->var3 = 0u;
  *&v7->var4[1] = 0u;
  *&v7->var4[3] = 0u;
  *&v7->var4[5] = 0u;
  *&v7->var4[7] = 0u;
  v9 = smalloc_typed(sizeCopy, 4uLL, 0x100004052888210uLL);
  v8->var3 = v9;
  if (v9)
  {
    v10 = [(TCColorPalettizer *)self createNodeOctree:v8 parent:0];
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    v10 = 1;
  }

  [(TCColorPalettizer *)self deleteOctree:v8];
  *octree = 0;
  return v10;
}

- (int)deleteOctree:(_tagOctree *)octree
{
  if (!octree)
  {
    return 0;
  }

  v5 = [(TCColorPalettizer *)self deleteNodeOctree:octree->var0];
  for (i = 24; i != 96; i += 8)
  {
    v7 = [(TCColorPalettizer *)self deleteListOctree:*(&octree->var0 + i)];
    if (v7)
    {
      v5 = v7;
    }
  }

  var3 = octree->var3;
  if (var3)
  {
    free(var3);
  }

  free(octree);
  return v5;
}

- (int)createNodeOctree:(_tagOctreeNode *)octree parent:(_tagOctreeNode *)parent
{
  v6 = malloc_type_malloc(0x60uLL, 0x10200401E285E51uLL);
  *octree = v6;
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  result = 0;
  v7->var0 = parent;
  v7->var4 = 0;
  *v7->var1 = 0u;
  *&v7->var1[2] = 0u;
  *&v7->var1[4] = 0u;
  *&v7->var1[6] = 0u;
  v7->var2 = 0;
  return result;
}

- (int)deleteNodeOctree:(_tagOctreeNode *)octree
{
  if (!octree)
  {
    return 0;
  }

  v5 = 0;
  for (i = 8; i != 72; i += 8)
  {
    v7 = [(TCColorPalettizer *)self deleteNodeOctree:*(&octree->var0 + i)];
    if (v7)
    {
      v5 = v7;
    }
  }

  free(octree);
  return v5;
}

- (int)deleteListOctree:(_tagLevelItem *)octree
{
  if (!octree)
  {
    return 0;
  }

  if (octree->var0)
  {
    v4 = [(TCColorPalettizer *)self deleteListOctree:?];
  }

  else
  {
    v4 = 0;
  }

  free(octree);
  return v4;
}

- (int)addPixelToOctree:(_tagOctree *)octree pixel:(_tagRgbQuad)pixel
{
  if (octree)
  {
    var0 = pixel.var0;
    v6 = *&pixel.var0 >> 8;
    v7 = *&pixel.var0 >> 16;
    v8 = octree->var0;
    var2 = octree->var0->var2;
    if (var2)
    {
      v10 = octree->var0;
LABEL_4:
      if (var2 < 0x9999)
      {
        v10->var3.var2 = ((v7 << 8) + v10->var3.var2 * var2) / (var2 + 1);
        v11 = ((v6 << 8) + v10->var3.var1 * var2) / (var2 + 1);
        v10->var3.var0 = ((var0 << 8) + v10->var3.var0 * var2) / (var2 + 1);
        v10->var3.var1 = v11;
      }

      LODWORD(v12) = 0;
      v10->var2 = var2 + 1;
    }

    else
    {
      v22 = *&pixel.var0 >> 8;
      var1 = pixel.var1;
      v15 = pixel.var0;
      v16 = 7;
      while (v16 != -1)
      {
        v17 = v8 + 8 * ((v15 >> v16) & 1 | (2 * ((var1 >> v16) & 1)) & 0xFFFFFFFB | (4 * ((v7 >> v16) & 1)));
        v19 = *(v17 + 1);
        v18 = (v17 + 8);
        v10 = v19;
        if (!v19)
        {
          LODWORD(v12) = [(TCColorPalettizer *)self createNodeOctree:v18 parent:v8];
          if (v12)
          {
            return v12;
          }

          v10 = *v18;
        }

        var2 = v10->var2;
        --v16;
        v8 = v10;
        if (var2)
        {
          LOBYTE(v6) = v22;
          goto LABEL_4;
        }
      }

      v8->var3.var1 = v22 << 8;
      v8->var3.var2 = v7 << 8;
      v8->var2 = 1;
      v8->var3.var0 = var0 << 8;
      ++octree->var2;
      v12 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
      if (v12)
      {
        v20 = v12;
        LODWORD(v12) = 0;
        v20->var0 = octree->var4[8];
        v20->var1 = v8;
        octree->var4[8] = v20;
      }
    }
  }

  else
  {
    LODWORD(v12) = 2;
  }

  return v12;
}

- (int)reduceOctree:(_tagOctree *)octree
{
  v5 = &octree->var4[8];
  v6 = -8;
  while (!*v5)
  {
    --v5;
    if (__CFADD__(v6++, 1))
    {
LABEL_5:
      LODWORD(v8) = 1;
      return v8;
    }
  }

  var0 = (*v5)->var1->var0;
  if (var0)
  {
    v10 = 0;
    v11 = 0;
    var1 = var0->var1;
    do
    {
      v13 = var1[v10];
      if (v13)
      {
        var2 = v13->var2;
        if (!var2)
        {
          goto LABEL_5;
        }

        v11 += var2;
      }

      ++v10;
    }

    while (v10 != 8);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = var1[v15];
      if (v18)
      {
        v19 = (v18->var2 << 8) / v11;
        v16 += v19 * v18->var3.var2;
        v17 = vmla_s32(v17, *&v18->var3.var0, vdup_n_s32(v19));
        v18->var0 = 0;
        var1[v15] = 0;
      }

      ++v15;
    }

    while (v15 != 8);
    var0->var2 = v11;
    var0->var3.var2 = v16 >> 8;
    *&var0->var3.var0 = vshr_n_u32(v17, 8uLL);
  }

  ++octree->var2;
  v8 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  if (v8)
  {
    v8->var0 = *(v5 - 1);
    v8->var1 = var0;
    *(v5 - 1) = v8;
    while (1)
    {
      v20 = *v5;
      if (!*v5)
      {
        break;
      }

      if (v20->var1->var0)
      {
        v5 = *v5;
      }

      else
      {
        *v5 = v20->var0;
        LODWORD(v8) = [(TCColorPalettizer *)self deleteNodeOctree:v20->var1];
        if (v8)
        {
          return v8;
        }

        --octree->var2;
        free(v20);
      }
    }

    LODWORD(v8) = 0;
  }

  return v8;
}

- (unsigned)getPaletteFromOctree:(_tagOctreeNode *)octree paletteEntry:(_tagRgbQuad *)entry index:(unsigned __int16)index
{
  v8 = 0;
  v9 = 0;
  var1 = octree->var1;
  if (octree->var0)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = 0;
  }

  do
  {
    v12 = var1[v8];
    if (v12)
    {
      v13 = [(TCColorPalettizer *)self getPaletteFromOctree:v12 paletteEntry:entry index:indexCopy];
      entry += v13;
      indexCopy += v13;
      v9 += v13;
    }

    ++v8;
  }

  while (v8 != 8);
  if (!*var1 && !octree->var1[1] && !octree->var1[2] && !octree->var1[3] && !octree->var1[4] && !octree->var1[5] && !octree->var1[6] && !octree->var1[7])
  {
    entry->var2 = BYTE1(octree->var3.var2);
    var0 = octree->var3.var0;
    entry->var1 = BYTE1(octree->var3.var1);
    entry->var0 = BYTE1(var0);
    entry->var3 = 0;
    octree->var4 = indexCopy;
    ++v9;
  }

  return v9;
}

- (int)rgbToIndexOctree:(_tagOctree *)octree source:(_tagRgbQuad)source destination:(char *)destination
{
  var0 = octree->var0;
  if (!octree->var0)
  {
    return 1;
  }

  v6 = 0;
  v7 = vand_s8(vshl_u32(vdup_n_s32(source.var0), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
  while (1)
  {
    var1 = var0->var1;
    if (!var0->var1[0] && !var0->var1[1] && !var0->var1[2] && !var0->var1[3] && !var0->var1[4] && !var0->var1[5] && !var0->var1[6] && !var0->var1[7])
    {
      break;
    }

    v9 = 7 - v6;
    v10 = vand_s8(vshl_u32(vshl_u32(v7, vneg_s32(vdup_n_s32(v9))), 0x200000001), 0x400000002);
    ++v6;
    var0 = var1[v10.i32[0] | (source.var0 >> v9) & 1u | v10.i32[1]];
    if (!var0)
    {
      return 1;
    }
  }

  if (!var0->var2)
  {
    return 1;
  }

  result = 0;
  *destination = var0->var4;
  return result;
}

@end