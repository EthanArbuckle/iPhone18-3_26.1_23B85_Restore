@interface CUINamedRenditionInfo
+ (int)subtypeToIndexWithPlatform:(int64_t)a3 andInput:(unsigned __int16)a4;
- (BOOL)containsVectorGlyphInterpolationSources;
- (BOOL)contentEqualForAttribute:(int)a3 withRenditionInfo:(id)a4;
- (BOOL)contentPresentForAttribute:(int)a3;
- (BOOL)diverseContentPresentForAttribute:(int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNamedRenditionInfo:(id)a3;
- (CUINamedRenditionInfo)initWithData:(id)a3 keyFormat:(const _renditionkeyfmt *)a4 andPlatform:(int64_t)a5;
- (CUINamedRenditionInfo)initWithKeyFormat:(const _renditionkeyfmt *)a3 andPlatform:(int64_t)a4;
- (id)archivedData;
- (id)bitwiseAndWith:(id)a3;
- (id)bitwiseOrWith:(id)a3 forAttribute:(int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (int)attributePresent:(int)a3 withValue:(unsigned __int16)a4;
- (unsigned)getClosestValueOfAttribute:(int)a3 withValue:(unsigned __int16)a4;
- (unsigned)getValueOfAttribute:(int)a3;
- (void)clearAttributePresent:(int)a3 withValue:(unsigned __int16)a4;
- (void)dealloc;
- (void)decrementValue:(int64_t *)a3 forAttribute:(int)a4;
- (void)incrementIndex:(unint64_t *)a3 inValues:(id)a4 forAttribute:(int)a5;
- (void)setAttributePresent:(int)a3 withValue:(unsigned __int16)a4;
@end

@implementation CUINamedRenditionInfo

- (BOOL)containsVectorGlyphInterpolationSources
{
  if (![(CUINamedRenditionInfo *)self containsVectorGlyphWithWeight:1 size:1]|| ![(CUINamedRenditionInfo *)self containsVectorGlyphWithWeight:4 size:1])
  {
    return 0;
  }

  return [(CUINamedRenditionInfo *)self containsVectorGlyphWithWeight:9 size:1];
}

- (void)dealloc
{
  CUIBitVectorDestroy(self->_bitmap);
  v3.receiver = self;
  v3.super_class = CUINamedRenditionInfo;
  [(CUINamedRenditionInfo *)&v3 dealloc];
}

- (id)archivedData
{
  v5 = 0;
  v2 = CUIBitVectorToData(self->_bitmap, &v5);
  v6 = 1;
  v7 = v5;
  v3 = +[NSMutableData data];
  [v3 appendBytes:&v6 length:12];
  [v3 appendBytes:v2 length:v5];
  free(v2);
  return v3;
}

- (CUINamedRenditionInfo)initWithData:(id)a3 keyFormat:(const _renditionkeyfmt *)a4 andPlatform:(int64_t)a5
{
  v11.receiver = self;
  v11.super_class = CUINamedRenditionInfo;
  v8 = [(CUINamedRenditionInfo *)&v11 init];
  v8->_keyFormat = a4;
  v8->_platform = a5;
  v9 = [a3 bytes];
  if (*v9 == 1)
  {
    v8->_bitmap = CUIBitVectorFromData(v9 + 3, v9[2]);
  }

  else
  {

    return 0;
  }

  return v8;
}

- (CUINamedRenditionInfo)initWithKeyFormat:(const _renditionkeyfmt *)a3 andPlatform:(int64_t)a4
{
  v27.receiver = self;
  v27.super_class = CUINamedRenditionInfo;
  v6 = [(CUINamedRenditionInfo *)&v27 init];
  *(v6 + 1) = CUIBitVectorCreate(32 * a3->var2);
  *(v6 + 2) = a3;
  *(v6 + 3) = a4;
  var2 = a3->var2;
  if (var2)
  {
    v14 = 0;
    var3 = a3->var3;
    do
    {
      v16 = var3[v14];
      if (*(v6 + 3) == -1 && v16 == 16)
      {
        if (var2 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = var2;
        }

        v22 = a3->var3;
        while (1)
        {
          v23 = *v22++;
          if (v23 == 16)
          {
            break;
          }

          if (!--v21)
          {
            goto LABEL_23;
          }
        }
      }

      if (v16 > 0x1C || ((1 << v16) & 0x100600E6) == 0)
      {
        v19 = 0;
        v20 = var2;
        if (var2 <= 1uLL)
        {
          v20 = 1;
        }

        while (var3[v19] != v16)
        {
          if (v20 == ++v19)
          {
            goto LABEL_23;
          }
        }

        if (v19 < 33)
        {
          goto LABEL_25;
        }

        _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", v7, v8, v9, v10, v11, v12, var3[v14]);
      }

LABEL_23:
      v24 = CUIBitVectorSetBitRange(*(v6 + 1), 32 * v14, 32 * v14 + 32);
      if ((v24 & 0x80000000) != 0)
      {
        [(CUINamedRenditionInfo *)v24 initWithKeyFormat:v25 andPlatform:v7, v8, v9, v10, v11, v12];
      }

      var2 = a3->var2;
LABEL_25:
      ++v14;
    }

    while (v14 < var2);
  }

  return v6;
}

- (BOOL)isEqualToNamedRenditionInfo:(id)a3
{
  if (*(a3 + 3) != self->_platform)
  {
    return 0;
  }

  if (*(*(a3 + 2) + 8) != self->_keyFormat->var2)
  {
    return 0;
  }

  if (!CUIBitVectorEqual(self->_bitmap, *(a3 + 1)))
  {
    keyFormat = self->_keyFormat;
    if (keyFormat->var2)
    {
      v6 = 0;
      while (keyFormat->var3[v6] == *(*(a3 + 2) + 4 * v6 + 12))
      {
        v7 = v6;
        v8 = [(CUINamedRenditionInfo *)self contentPresentForAttribute:?];
        if (v8 != [a3 contentPresentForAttribute:*(*(a3 + 2) + 4 * v7 + 12)])
        {
          break;
        }

        v9 = [(CUINamedRenditionInfo *)self diverseContentPresentForAttribute:self->_keyFormat->var3[v7]];
        if (v9 != [a3 diverseContentPresentForAttribute:*(*(a3 + 2) + 4 * v7 + 12)])
        {
          break;
        }

        if ([(CUINamedRenditionInfo *)self contentPresentForAttribute:self->_keyFormat->var3[v7]])
        {
          v10 = [[NSMutableArray alloc] initWithCapacity:4];
          v11 = [[NSMutableArray alloc] initWithCapacity:4];
          platform = self->_platform;
          v13 = self->_keyFormat->var3[v7];
          v14 = CUIBitVectorBucketValue(self->_bitmap, 32 * v7);
          if (v14 == -1)
          {
            [v10 addObject:@"<all>"];
          }

          else
          {
            v15 = v14;
            v16 = 0;
            do
            {
              if ((v15 >> v16))
              {
                v17 = v16;
                if (v13 == 16)
                {
                  v18 = __CUISubtypeFromIndex(platform, v16);
                  if (v18 >= 0)
                  {
                    v17 = v18;
                  }

                  else
                  {
                    v17 = v16;
                  }
                }

                [v10 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v17)}];
              }

              v16 = (v16 + 1);
            }

            while (v16 != 32);
          }

          v19 = *(a3 + 3);
          v20 = *(*(a3 + 2) + 4 * v7 + 12);
          v21 = CUIBitVectorBucketValue(*(a3 + 1), 32 * v7);
          if (v21 == -1)
          {
            [v11 addObject:@"<all>"];
          }

          else
          {
            v22 = v21;
            v23 = 0;
            do
            {
              if ((v22 >> v23))
              {
                v24 = v23;
                if (v20 == 16)
                {
                  v25 = __CUISubtypeFromIndex(v19, v23);
                  if (v25 >= 0)
                  {
                    v24 = v25;
                  }

                  else
                  {
                    v24 = v23;
                  }
                }

                [v11 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v24)}];
              }

              v23 = (v23 + 1);
            }

            while (v23 != 32);
          }

          v26 = [v10 isEqualToArray:v11];

          if (!v26)
          {
            break;
          }
        }

        v6 = v7 + 1;
        keyFormat = self->_keyFormat;
        result = 1;
        if ((v7 + 1) >= keyFormat->var2)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return 1;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(CUINamedRenditionInfo *)self isEqualToNamedRenditionInfo:a3];
}

- (id)description
{
  v3 = CUIBitVectorToString(self->_bitmap);
  v4 = objc_opt_class();
  v5 = [NSString stringWithFormat:@"<%@: %p %s>", NSStringFromClass(v4), self, v3];
  free(v3);
  return v5;
}

- (id)debugDescription
{
  bzero(__str, 0x800uLL);
  keyFormat = self->_keyFormat;
  v4 = [[NSMutableArray alloc] initWithCapacity:32];
  [v4 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "| Index |            Attribute             | Is Content Present | Is Diverse Content Present |            Values          |")}];
  v20 = v4;
  [v4 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "|-------|----------------------------------|--------------------|----------------------------|----------------------------|")}];
  if (keyFormat->var2)
  {
    v5 = 0;
    var3 = keyFormat->var3;
    do
    {
      v6 = var3[v5];
      v21 = CUIThemeAttributeNameToString(var3[v5]);
      bzero(__str, 0x800uLL);
      v7 = [(CUINamedRenditionInfo *)self contentPresentForAttribute:v6];
      v8 = [(CUINamedRenditionInfo *)self diverseContentPresentForAttribute:v6];
      v9 = [[NSMutableArray alloc] initWithCapacity:4];
      platform = self->_platform;
      v11 = var3[v5];
      v12 = CUIBitVectorBucketValue(self->_bitmap, 32 * v5);
      if (v12 == -1)
      {
        [v9 addObject:@"<all>"];
      }

      else
      {
        v13 = v12;
        v14 = 0;
        do
        {
          if ((v13 >> v14))
          {
            v15 = v14;
            if (v11 == 16)
            {
              v16 = __CUISubtypeFromIndex(platform, v14);
              if (v16 >= 0)
              {
                v15 = v16;
              }

              else
              {
                v15 = v14;
              }
            }

            [v9 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v15)}];
          }

          v14 = (v14 + 1);
        }

        while (v14 != 32);
      }

      snprintf(__str, 0x800uLL, "| %-5d | %-32s | %-18d | %-26d | %-26s |", v5, v21, v7, v8, [objc_msgSend(v9 componentsJoinedByString:{@", "), "UTF8String"}]);
      [v20 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", __str)}];

      ++v5;
    }

    while (v5 < keyFormat->var2);
  }

  v17 = [v20 componentsJoinedByString:@"\n"];

  return v17;
}

- (int)attributePresent:(int)a3 withValue:(unsigned __int16)a4
{
  v8 = *&a3;
  keyFormat = self->_keyFormat;
  platform = self->_platform;
  if (a3 == 16 && platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return -1;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v14 = *var3++;
      if (v14 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return -1;
      }
    }
  }

  if (a3 <= 0x1C)
  {
    if (((1 << a3) & 0x100600E6) != 0)
    {
      return -1;
    }

    if (a3 == 13)
    {
      *&a4 = a4 != 0;
      goto LABEL_23;
    }

    if (a3 != 16)
    {
      goto LABEL_23;
    }

    if (platform != -1)
    {
      if (!a4)
      {
        goto LABEL_23;
      }

      if (platform <= 3)
      {
        if (platform)
        {
          if (platform == 3)
          {
            if (a4 != 3840)
            {
              if (a4 != 1088)
              {
                if (a4 != 720)
                {
                  goto LABEL_102;
                }

                goto LABEL_188;
              }

LABEL_109:
              *&a4 = 5;
              goto LABEL_23;
            }

LABEL_170:
            *&a4 = 7;
            goto LABEL_23;
          }

          goto LABEL_65;
        }

        if (a4 <= 1963)
        {
          if (a4 == 1665)
          {
            goto LABEL_177;
          }

          if (a4 == 1864)
          {
            goto LABEL_78;
          }

LABEL_102:
          [CUINamedRenditionInfo attributePresent:a4 withValue:platform];
        }

        if (a4 != 1964)
        {
          if (a4 != 2234)
          {
            goto LABEL_102;
          }

          goto LABEL_116;
        }

LABEL_131:
        *&a4 = 26;
        goto LABEL_23;
      }

      if (platform == 5)
      {
        if (a4 != 3648)
        {
          goto LABEL_102;
        }

        goto LABEL_78;
      }

      if (platform != 4)
      {
LABEL_65:
        if (platform > 2)
        {
          goto LABEL_102;
        }

        if (a4 > 2435)
        {
          if (a4 > 2735)
          {
            if (a4 > 2795)
            {
              if (a4 <= 3023)
              {
                if (a4 != 2796)
                {
                  if (a4 != 2868)
                  {
                    goto LABEL_102;
                  }

LABEL_82:
                  *&a4 = 14;
                  goto LABEL_23;
                }

LABEL_135:
                *&a4 = 30;
                goto LABEL_23;
              }

              if (a4 != 3024)
              {
                if (a4 != 32401)
                {
                  goto LABEL_102;
                }

                goto LABEL_187;
              }

LABEL_188:
              *&a4 = 6;
              goto LABEL_23;
            }

            if (a4 != 2736)
            {
              if (a4 != 2752)
              {
                if (a4 != 2778)
                {
                  goto LABEL_102;
                }

                goto LABEL_176;
              }

LABEL_178:
              *&a4 = 8;
              goto LABEL_23;
            }

LABEL_177:
            *&a4 = 31;
            goto LABEL_23;
          }

          if (a4 <= 2621)
          {
            if (a4 != 2436)
            {
              if (a4 != 2532)
              {
                if (a4 != 2556)
                {
                  goto LABEL_102;
                }

LABEL_155:
                *&a4 = 29;
                goto LABEL_23;
              }

LABEL_156:
              *&a4 = 22;
              goto LABEL_23;
            }

LABEL_160:
            *&a4 = 11;
            goto LABEL_23;
          }

          if (a4 != 2622)
          {
            if (a4 != 2688)
            {
              if (a4 != 2732)
              {
                goto LABEL_102;
              }

              goto LABEL_182;
            }

LABEL_184:
            *&a4 = 12;
            goto LABEL_23;
          }

LABEL_183:
          *&a4 = 13;
          goto LABEL_23;
        }

        if (a4 <= 2223)
        {
          if (a4 <= 569)
          {
            if (a4 == 163)
            {
              goto LABEL_109;
            }

            if (a4 != 568)
            {
              if (a4 != 569)
              {
                goto LABEL_102;
              }

LABEL_157:
              *&a4 = 2;
              goto LABEL_23;
            }

LABEL_78:
            *&a4 = 1;
            goto LABEL_23;
          }

          if (a4 != 570)
          {
            if (a4 != 1792)
            {
              if (a4 != 2160)
              {
                goto LABEL_102;
              }

              goto LABEL_164;
            }

LABEL_165:
            *&a4 = 16;
            goto LABEL_23;
          }

LABEL_166:
          *&a4 = 3;
          goto LABEL_23;
        }

        if (a4 <= 2359)
        {
          if (a4 != 2224)
          {
            if (a4 != 2266)
            {
              if (a4 != 2340)
              {
                goto LABEL_102;
              }

              goto LABEL_143;
            }

LABEL_158:
            *&a4 = 25;
            goto LABEL_23;
          }

LABEL_159:
          *&a4 = 10;
          goto LABEL_23;
        }

        if (a4 != 2360)
        {
          if (a4 != 2388)
          {
            if (a4 != 2420)
            {
              goto LABEL_102;
            }

            goto LABEL_170;
          }

LABEL_171:
          *&a4 = 15;
          goto LABEL_23;
        }

LABEL_172:
        *&a4 = 20;
        goto LABEL_23;
      }

      if (a4 <= 445)
      {
        if (a4 <= 383)
        {
          if (a4 == 320)
          {
            goto LABEL_178;
          }

          if (a4 == 340)
          {
            goto LABEL_183;
          }

          goto LABEL_102;
        }

        if (a4 != 384)
        {
          if (a4 == 390)
          {
            goto LABEL_82;
          }

          if (a4 != 430)
          {
            goto LABEL_102;
          }

LABEL_138:
          *&a4 = 23;
          goto LABEL_23;
        }

LABEL_137:
        *&a4 = 9;
        goto LABEL_23;
      }

      if (a4 > 495)
      {
        if (a4 == 496)
        {
          goto LABEL_135;
        }

        if (a4 != 502)
        {
          if (a4 == 514)
          {
            goto LABEL_177;
          }

          goto LABEL_102;
        }

LABEL_136:
        *&a4 = 28;
        goto LABEL_23;
      }

      if (a4 == 446)
      {
        goto LABEL_155;
      }

      if (a4 != 484)
      {
        goto LABEL_102;
      }

LABEL_154:
      *&a4 = 24;
      goto LABEL_23;
    }

    if (a4 > 2159)
    {
      if (a4 > 2531)
      {
        if (a4 > 2777)
        {
          if (a4 > 3839)
          {
            if (a4 == 3840)
            {
              goto LABEL_170;
            }

            if (a4 == 32401)
            {
LABEL_187:
              *&a4 = 17;
              goto LABEL_23;
            }
          }

          else
          {
            if (a4 == 2778)
            {
LABEL_176:
              *&a4 = 19;
              goto LABEL_23;
            }

            if (a4 == 2796)
            {
              goto LABEL_135;
            }
          }
        }

        else if (a4 > 2687)
        {
          if (a4 == 2688)
          {
            goto LABEL_184;
          }

          if (a4 == 2732)
          {
LABEL_182:
            *&a4 = 4;
            goto LABEL_23;
          }
        }

        else
        {
          if (a4 == 2532)
          {
            goto LABEL_156;
          }

          if (a4 == 2556)
          {
            goto LABEL_155;
          }
        }
      }

      else if (a4 > 2339)
      {
        if (a4 > 2387)
        {
          if (a4 == 2388)
          {
            goto LABEL_171;
          }

          if (a4 == 2436)
          {
            goto LABEL_160;
          }
        }

        else
        {
          if (a4 == 2340)
          {
LABEL_143:
            *&a4 = 18;
            goto LABEL_23;
          }

          if (a4 == 2360)
          {
            goto LABEL_172;
          }
        }
      }

      else if (a4 > 2233)
      {
        if (a4 == 2234)
        {
LABEL_116:
          *&a4 = 27;
          goto LABEL_23;
        }

        if (a4 == 2266)
        {
          goto LABEL_158;
        }
      }

      else
      {
        if (a4 == 2160)
        {
LABEL_164:
          *&a4 = 21;
          goto LABEL_23;
        }

        if (a4 == 2224)
        {
          goto LABEL_159;
        }
      }
    }

    else if (a4 > 501)
    {
      if (a4 > 719)
      {
        if (a4 > 1791)
        {
          if (a4 == 1792)
          {
            goto LABEL_165;
          }

          if (a4 == 1964)
          {
            goto LABEL_131;
          }
        }

        else
        {
          if (a4 == 720)
          {
            goto LABEL_188;
          }

          if (a4 == 1665)
          {
            goto LABEL_177;
          }
        }
      }

      else if (a4 > 568)
      {
        if (a4 == 569)
        {
          goto LABEL_157;
        }

        if (a4 == 570)
        {
          goto LABEL_166;
        }
      }

      else
      {
        if (a4 == 502)
        {
          goto LABEL_136;
        }

        if (a4 == 568)
        {
          goto LABEL_78;
        }
      }
    }

    else if (a4 > 383)
    {
      if (a4 > 429)
      {
        if (a4 == 430)
        {
          goto LABEL_138;
        }

        if (a4 == 484)
        {
          goto LABEL_154;
        }
      }

      else
      {
        if (a4 == 384)
        {
          goto LABEL_137;
        }

        if (a4 == 390)
        {
          goto LABEL_82;
        }
      }
    }

    else if (a4 > 319)
    {
      if (a4 == 320)
      {
        goto LABEL_178;
      }

      if (a4 == 340)
      {
        goto LABEL_183;
      }
    }

    else
    {
      if (!a4)
      {
        goto LABEL_23;
      }

      if (a4 == 163)
      {
        goto LABEL_109;
      }
    }

    _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", *&a3, a4, v4, v5, v6, v7, "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)");
    *&a4 = 0xFFFFLL;
  }

LABEL_23:
  v16 = keyFormat->var2;
  if (!v16)
  {
    return -1;
  }

  v17 = 0;
  v18 = a4;
  while (keyFormat->var3[v17] != v8)
  {
    ++v17;
    v18 += 32;
    if (v16 == v17)
    {
      return -1;
    }
  }

  if (v17 >= 33)
  {
    _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", *&a3, a4, v4, v5, v6, v7, v8);
    return -1;
  }

  if ((v18 & 0x80000000) != 0)
  {
    return -1;
  }

  bitmap = self->_bitmap;

  return CUIBitVectorIsBitSet(bitmap, v18);
}

- (unsigned)getValueOfAttribute:(int)a3
{
  keyFormat = self->_keyFormat;
  if (a3 == 16 && self->_platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      result = 0;
      return __CUISubtypeFromIndex(self->_platform, result);
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v13 = *var3++;
      if (v13 == 16)
      {
        break;
      }

      if (!--var2)
      {
        goto LABEL_10;
      }
    }
  }

  if (a3 <= 0x1C && ((1 << a3) & 0x100600E6) != 0)
  {
    goto LABEL_10;
  }

  v15 = keyFormat->var2;
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = 0;
  v17 = 0;
  v18 = keyFormat->var3;
  while (v18[v17] != a3)
  {
    result = 0;
    ++v17;
    v16 += 32;
    if (v15 == v17)
    {
      goto LABEL_11;
    }
  }

  if (v17 >= 33)
  {
    _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", *&a3, v3, v4, v5, v6, v7, *&a3);
LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  v19 = CUIBitVectorBucketValue(self->_bitmap, v16);
  v20 = 0;
  while (((v19 >> v20) & 1) == 0)
  {
    result = 0;
    if (++v20 == 32)
    {
      goto LABEL_11;
    }
  }

  result = v20;
LABEL_11:
  if (a3 == 16)
  {
    return __CUISubtypeFromIndex(self->_platform, result);
  }

  return result;
}

- (unsigned)getClosestValueOfAttribute:(int)a3 withValue:(unsigned __int16)a4
{
  v8 = a4;
  keyFormat = self->_keyFormat;
  if (a3 == 16 && self->_platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return 0;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v12 = *var3++;
      if (v12 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return 0;
      }
    }
  }

  if (a3 <= 0x1C && ((1 << a3) & 0x100600E6) != 0)
  {
    return 0;
  }

  v15 = keyFormat->var2;
  if (!v15)
  {
    return 0;
  }

  v16 = 0;
  v17 = 0;
  v18 = keyFormat->var3;
  while (v18[v17] != a3)
  {
    v13 = 0;
    ++v17;
    v16 += 32;
    if (v15 == v17)
    {
      return v13;
    }
  }

  if (v17 >= 33)
  {
    _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", *&a3, a4, v4, v5, v6, v7, *&a3);
    return 0;
  }

  if ((v17 & 0x80000000) != 0)
  {
    return 0;
  }

  v19 = CUIBitVectorBucketValue(self->_bitmap, v16);
  while (((v19 >> v8) & 1) == 0)
  {
    v13 = 0;
    v20 = __OFSUB__(v8--, 1);
    if (v8 < 0 != v20)
    {
      return v13;
    }
  }

  return v8;
}

- (BOOL)contentPresentForAttribute:(int)a3
{
  keyFormat = self->_keyFormat;
  if (a3 == 16 && self->_platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return 0;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v11 = *var3++;
      if (v11 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return 0;
      }
    }
  }

  if ((a3 - 1) >= 0x1C || ((0x8030073u >> (a3 - 1)) & 1) == 0)
  {
    v12 = keyFormat->var2;
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = keyFormat->var3;
      while (v15[v14] != a3)
      {
        ++v14;
        v13 += 32;
        if (v12 == v14)
        {
          return 0;
        }
      }

      if (v14 < 33)
      {
        if ((v14 & 0x80000000) == 0 && CUIBitVectorNumberOfBitsSetInBucket(self->_bitmap, v13) > 0)
        {
          return 1;
        }
      }

      else
      {
        _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", *&a3, v3, v4, v5, v6, v7, *&a3);
      }
    }
  }

  return 0;
}

- (BOOL)contentEqualForAttribute:(int)a3 withRenditionInfo:(id)a4
{
  keyFormat = self->_keyFormat;
  if (a3 == 16 && self->_platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return 0;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v12 = *var3++;
      if (v12 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return 0;
      }
    }
  }

  if ((a3 - 1) >= 0x1C || ((0x8030073u >> (a3 - 1)) & 1) == 0)
  {
    v13 = keyFormat->var2;
    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = keyFormat->var3;
      while (v16[v15] != a3)
      {
        ++v15;
        v14 += 32;
        if (v13 == v15)
        {
          return 0;
        }
      }

      if (v15 < 33)
      {
        if ((v15 & 0x80000000) == 0)
        {
          v17 = CUIBitVectorBucketValue(self->_bitmap, v14);
          return v17 == CUIBitVectorBucketValue(*(a4 + 1), v14);
        }
      }

      else
      {
        _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", *&a3, a4, v4, v5, v6, v7, *&a3);
      }
    }
  }

  return 0;
}

- (BOOL)diverseContentPresentForAttribute:(int)a3
{
  keyFormat = self->_keyFormat;
  if (a3 == 16 && self->_platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return 0;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v12 = *var3++;
      if (v12 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return 0;
      }
    }
  }

  if (a3 - 1) < 0x1C && ((0x8030073u >> (a3 - 1)))
  {
    return 0;
  }

  v13 = keyFormat->var2;
  if (!v13)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = keyFormat->var3;
  while (v16[v15] != a3)
  {
    ++v15;
    v14 += 32;
    if (v13 == v15)
    {
      return 0;
    }
  }

  if (v15 >= 33)
  {
    _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", *&a3, v3, v4, v5, v6, v7, *&a3);
    return 0;
  }

  return (v15 & 0x80000000) == 0 && (CUIBitVectorNumberOfBitsSetInBucket(self->_bitmap, v14) != 1 || CUIBitVectorIsBitSet(self->_bitmap, v14) != 1);
}

- (void)setAttributePresent:(int)a3 withValue:(unsigned __int16)a4
{
  v8 = *&a3;
  keyFormat = self->_keyFormat;
  platform = self->_platform;
  if (a3 == 16 && platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v14 = *var3++;
      if (v14 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return;
      }
    }
  }

  if (a3 > 0x1C)
  {
    goto LABEL_23;
  }

  if (((1 << a3) & 0x100600E6) != 0)
  {
    return;
  }

  if (a3 == 13)
  {
    *&a4 = a4 != 0;
    goto LABEL_23;
  }

  if (a3 != 16)
  {
    goto LABEL_23;
  }

  if (platform == -1)
  {
    if (a4 > 2159)
    {
      if (a4 > 2531)
      {
        if (a4 > 2777)
        {
          if (a4 > 3839)
          {
            if (a4 == 3840)
            {
              goto LABEL_170;
            }

            if (a4 == 32401)
            {
LABEL_187:
              *&a4 = 17;
              goto LABEL_23;
            }
          }

          else
          {
            if (a4 == 2778)
            {
LABEL_176:
              *&a4 = 19;
              goto LABEL_23;
            }

            if (a4 == 2796)
            {
              goto LABEL_135;
            }
          }
        }

        else if (a4 > 2687)
        {
          if (a4 == 2688)
          {
            goto LABEL_184;
          }

          if (a4 == 2732)
          {
LABEL_182:
            *&a4 = 4;
            goto LABEL_23;
          }
        }

        else
        {
          if (a4 == 2532)
          {
            goto LABEL_156;
          }

          if (a4 == 2556)
          {
            goto LABEL_155;
          }
        }
      }

      else if (a4 > 2339)
      {
        if (a4 > 2387)
        {
          if (a4 == 2388)
          {
            goto LABEL_171;
          }

          if (a4 == 2436)
          {
            goto LABEL_160;
          }
        }

        else
        {
          if (a4 == 2340)
          {
LABEL_143:
            *&a4 = 18;
            goto LABEL_23;
          }

          if (a4 == 2360)
          {
            goto LABEL_172;
          }
        }
      }

      else if (a4 > 2233)
      {
        if (a4 == 2234)
        {
LABEL_116:
          *&a4 = 27;
          goto LABEL_23;
        }

        if (a4 == 2266)
        {
          goto LABEL_158;
        }
      }

      else
      {
        if (a4 == 2160)
        {
LABEL_164:
          *&a4 = 21;
          goto LABEL_23;
        }

        if (a4 == 2224)
        {
          goto LABEL_159;
        }
      }
    }

    else if (a4 > 501)
    {
      if (a4 > 719)
      {
        if (a4 > 1791)
        {
          if (a4 == 1792)
          {
            goto LABEL_165;
          }

          if (a4 == 1964)
          {
            goto LABEL_131;
          }
        }

        else
        {
          if (a4 == 720)
          {
            goto LABEL_188;
          }

          if (a4 == 1665)
          {
            goto LABEL_177;
          }
        }
      }

      else if (a4 > 568)
      {
        if (a4 == 569)
        {
          goto LABEL_157;
        }

        if (a4 == 570)
        {
          goto LABEL_166;
        }
      }

      else
      {
        if (a4 == 502)
        {
          goto LABEL_136;
        }

        if (a4 == 568)
        {
          goto LABEL_78;
        }
      }
    }

    else if (a4 > 383)
    {
      if (a4 > 429)
      {
        if (a4 == 430)
        {
          goto LABEL_138;
        }

        if (a4 == 484)
        {
          goto LABEL_154;
        }
      }

      else
      {
        if (a4 == 384)
        {
          goto LABEL_137;
        }

        if (a4 == 390)
        {
          goto LABEL_82;
        }
      }
    }

    else if (a4 > 319)
    {
      if (a4 == 320)
      {
        goto LABEL_178;
      }

      if (a4 == 340)
      {
        goto LABEL_183;
      }
    }

    else
    {
      if (!a4)
      {
        goto LABEL_23;
      }

      if (a4 == 163)
      {
        goto LABEL_109;
      }
    }

    _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", *&a3, a4, v4, v5, v6, v7, "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)");
    *&a4 = 0xFFFFLL;
    goto LABEL_23;
  }

  if (!a4)
  {
    goto LABEL_23;
  }

  if (platform <= 3)
  {
    if (platform)
    {
      if (platform == 3)
      {
        if (a4 != 3840)
        {
          if (a4 != 1088)
          {
            if (a4 != 720)
            {
              goto LABEL_102;
            }

            goto LABEL_188;
          }

LABEL_109:
          *&a4 = 5;
          goto LABEL_23;
        }

LABEL_170:
        *&a4 = 7;
        goto LABEL_23;
      }

      goto LABEL_65;
    }

    if (a4 <= 1963)
    {
      if (a4 == 1665)
      {
        goto LABEL_177;
      }

      if (a4 == 1864)
      {
        goto LABEL_78;
      }

LABEL_102:
      [CUINamedRenditionInfo attributePresent:a4 withValue:platform];
    }

    if (a4 != 1964)
    {
      if (a4 != 2234)
      {
        goto LABEL_102;
      }

      goto LABEL_116;
    }

LABEL_131:
    *&a4 = 26;
    goto LABEL_23;
  }

  if (platform == 5)
  {
    if (a4 != 3648)
    {
      goto LABEL_102;
    }

    goto LABEL_78;
  }

  if (platform == 4)
  {
    if (a4 <= 445)
    {
      if (a4 <= 383)
      {
        if (a4 == 320)
        {
          goto LABEL_178;
        }

        if (a4 == 340)
        {
          goto LABEL_183;
        }

        goto LABEL_102;
      }

      if (a4 != 384)
      {
        if (a4 == 390)
        {
          goto LABEL_82;
        }

        if (a4 != 430)
        {
          goto LABEL_102;
        }

LABEL_138:
        *&a4 = 23;
        goto LABEL_23;
      }

LABEL_137:
      *&a4 = 9;
      goto LABEL_23;
    }

    if (a4 > 495)
    {
      if (a4 == 496)
      {
        goto LABEL_135;
      }

      if (a4 != 502)
      {
        if (a4 == 514)
        {
          goto LABEL_177;
        }

        goto LABEL_102;
      }

LABEL_136:
      *&a4 = 28;
      goto LABEL_23;
    }

    if (a4 == 446)
    {
      goto LABEL_155;
    }

    if (a4 != 484)
    {
      goto LABEL_102;
    }

LABEL_154:
    *&a4 = 24;
    goto LABEL_23;
  }

LABEL_65:
  if (platform > 2)
  {
    goto LABEL_102;
  }

  if (a4 <= 2435)
  {
    if (a4 <= 2223)
    {
      if (a4 <= 569)
      {
        if (a4 == 163)
        {
          goto LABEL_109;
        }

        if (a4 != 568)
        {
          if (a4 != 569)
          {
            goto LABEL_102;
          }

LABEL_157:
          *&a4 = 2;
          goto LABEL_23;
        }

LABEL_78:
        *&a4 = 1;
        goto LABEL_23;
      }

      if (a4 != 570)
      {
        if (a4 != 1792)
        {
          if (a4 != 2160)
          {
            goto LABEL_102;
          }

          goto LABEL_164;
        }

LABEL_165:
        *&a4 = 16;
        goto LABEL_23;
      }

LABEL_166:
      *&a4 = 3;
      goto LABEL_23;
    }

    if (a4 <= 2359)
    {
      if (a4 != 2224)
      {
        if (a4 != 2266)
        {
          if (a4 != 2340)
          {
            goto LABEL_102;
          }

          goto LABEL_143;
        }

LABEL_158:
        *&a4 = 25;
        goto LABEL_23;
      }

LABEL_159:
      *&a4 = 10;
      goto LABEL_23;
    }

    if (a4 != 2360)
    {
      if (a4 != 2388)
      {
        if (a4 != 2420)
        {
          goto LABEL_102;
        }

        goto LABEL_170;
      }

LABEL_171:
      *&a4 = 15;
      goto LABEL_23;
    }

LABEL_172:
    *&a4 = 20;
    goto LABEL_23;
  }

  if (a4 <= 2735)
  {
    if (a4 <= 2621)
    {
      if (a4 != 2436)
      {
        if (a4 != 2532)
        {
          if (a4 != 2556)
          {
            goto LABEL_102;
          }

LABEL_155:
          *&a4 = 29;
          goto LABEL_23;
        }

LABEL_156:
        *&a4 = 22;
        goto LABEL_23;
      }

LABEL_160:
      *&a4 = 11;
      goto LABEL_23;
    }

    if (a4 != 2622)
    {
      if (a4 != 2688)
      {
        if (a4 != 2732)
        {
          goto LABEL_102;
        }

        goto LABEL_182;
      }

LABEL_184:
      *&a4 = 12;
      goto LABEL_23;
    }

LABEL_183:
    *&a4 = 13;
    goto LABEL_23;
  }

  if (a4 <= 2795)
  {
    if (a4 != 2736)
    {
      if (a4 != 2752)
      {
        if (a4 != 2778)
        {
          goto LABEL_102;
        }

        goto LABEL_176;
      }

LABEL_178:
      *&a4 = 8;
      goto LABEL_23;
    }

LABEL_177:
    *&a4 = 31;
    goto LABEL_23;
  }

  if (a4 <= 3023)
  {
    if (a4 != 2796)
    {
      if (a4 != 2868)
      {
        goto LABEL_102;
      }

LABEL_82:
      *&a4 = 14;
      goto LABEL_23;
    }

LABEL_135:
    *&a4 = 30;
    goto LABEL_23;
  }

  if (a4 != 3024)
  {
    if (a4 != 32401)
    {
      goto LABEL_102;
    }

    goto LABEL_187;
  }

LABEL_188:
  *&a4 = 6;
LABEL_23:
  v15 = keyFormat->var2;
  if (v15)
  {
    v16 = 0;
    v17 = a4;
    while (keyFormat->var3[v16] != v8)
    {
      ++v16;
      v17 += 32;
      if (v15 == v16)
      {
        return;
      }
    }

    if (v16 < 33)
    {
      if ((v17 & 0x80000000) == 0)
      {
        bitmap = self->_bitmap;

        CUIBitVectorSetBit(bitmap, v17);
      }
    }

    else
    {
      _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", *&a3, a4, v4, v5, v6, v7, v8);
    }
  }
}

- (void)clearAttributePresent:(int)a3 withValue:(unsigned __int16)a4
{
  v8 = *&a3;
  keyFormat = self->_keyFormat;
  platform = self->_platform;
  if (a3 == 16 && platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v14 = *var3++;
      if (v14 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return;
      }
    }
  }

  if (a3 > 0x1C)
  {
    goto LABEL_23;
  }

  if (((1 << a3) & 0x100600E6) != 0)
  {
    return;
  }

  if (a3 == 13)
  {
    *&a4 = a4 != 0;
    goto LABEL_23;
  }

  if (a3 != 16)
  {
    goto LABEL_23;
  }

  if (platform == -1)
  {
    if (a4 > 2159)
    {
      if (a4 > 2531)
      {
        if (a4 > 2777)
        {
          if (a4 > 3839)
          {
            if (a4 == 3840)
            {
              goto LABEL_170;
            }

            if (a4 == 32401)
            {
LABEL_187:
              *&a4 = 17;
              goto LABEL_23;
            }
          }

          else
          {
            if (a4 == 2778)
            {
LABEL_176:
              *&a4 = 19;
              goto LABEL_23;
            }

            if (a4 == 2796)
            {
              goto LABEL_135;
            }
          }
        }

        else if (a4 > 2687)
        {
          if (a4 == 2688)
          {
            goto LABEL_184;
          }

          if (a4 == 2732)
          {
LABEL_182:
            *&a4 = 4;
            goto LABEL_23;
          }
        }

        else
        {
          if (a4 == 2532)
          {
            goto LABEL_156;
          }

          if (a4 == 2556)
          {
            goto LABEL_155;
          }
        }
      }

      else if (a4 > 2339)
      {
        if (a4 > 2387)
        {
          if (a4 == 2388)
          {
            goto LABEL_171;
          }

          if (a4 == 2436)
          {
            goto LABEL_160;
          }
        }

        else
        {
          if (a4 == 2340)
          {
LABEL_143:
            *&a4 = 18;
            goto LABEL_23;
          }

          if (a4 == 2360)
          {
            goto LABEL_172;
          }
        }
      }

      else if (a4 > 2233)
      {
        if (a4 == 2234)
        {
LABEL_116:
          *&a4 = 27;
          goto LABEL_23;
        }

        if (a4 == 2266)
        {
          goto LABEL_158;
        }
      }

      else
      {
        if (a4 == 2160)
        {
LABEL_164:
          *&a4 = 21;
          goto LABEL_23;
        }

        if (a4 == 2224)
        {
          goto LABEL_159;
        }
      }
    }

    else if (a4 > 501)
    {
      if (a4 > 719)
      {
        if (a4 > 1791)
        {
          if (a4 == 1792)
          {
            goto LABEL_165;
          }

          if (a4 == 1964)
          {
            goto LABEL_131;
          }
        }

        else
        {
          if (a4 == 720)
          {
            goto LABEL_188;
          }

          if (a4 == 1665)
          {
            goto LABEL_177;
          }
        }
      }

      else if (a4 > 568)
      {
        if (a4 == 569)
        {
          goto LABEL_157;
        }

        if (a4 == 570)
        {
          goto LABEL_166;
        }
      }

      else
      {
        if (a4 == 502)
        {
          goto LABEL_136;
        }

        if (a4 == 568)
        {
          goto LABEL_78;
        }
      }
    }

    else if (a4 > 383)
    {
      if (a4 > 429)
      {
        if (a4 == 430)
        {
          goto LABEL_138;
        }

        if (a4 == 484)
        {
          goto LABEL_154;
        }
      }

      else
      {
        if (a4 == 384)
        {
          goto LABEL_137;
        }

        if (a4 == 390)
        {
          goto LABEL_82;
        }
      }
    }

    else if (a4 > 319)
    {
      if (a4 == 320)
      {
        goto LABEL_178;
      }

      if (a4 == 340)
      {
        goto LABEL_183;
      }
    }

    else
    {
      if (!a4)
      {
        goto LABEL_23;
      }

      if (a4 == 163)
      {
        goto LABEL_109;
      }
    }

    _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", *&a3, a4, v4, v5, v6, v7, "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)");
    *&a4 = 0xFFFFLL;
    goto LABEL_23;
  }

  if (!a4)
  {
    goto LABEL_23;
  }

  if (platform <= 3)
  {
    if (platform)
    {
      if (platform == 3)
      {
        if (a4 != 3840)
        {
          if (a4 != 1088)
          {
            if (a4 != 720)
            {
              goto LABEL_102;
            }

            goto LABEL_188;
          }

LABEL_109:
          *&a4 = 5;
          goto LABEL_23;
        }

LABEL_170:
        *&a4 = 7;
        goto LABEL_23;
      }

      goto LABEL_65;
    }

    if (a4 <= 1963)
    {
      if (a4 == 1665)
      {
        goto LABEL_177;
      }

      if (a4 == 1864)
      {
        goto LABEL_78;
      }

LABEL_102:
      [CUINamedRenditionInfo attributePresent:a4 withValue:platform];
    }

    if (a4 != 1964)
    {
      if (a4 != 2234)
      {
        goto LABEL_102;
      }

      goto LABEL_116;
    }

LABEL_131:
    *&a4 = 26;
    goto LABEL_23;
  }

  if (platform == 5)
  {
    if (a4 != 3648)
    {
      goto LABEL_102;
    }

    goto LABEL_78;
  }

  if (platform == 4)
  {
    if (a4 <= 445)
    {
      if (a4 <= 383)
      {
        if (a4 == 320)
        {
          goto LABEL_178;
        }

        if (a4 == 340)
        {
          goto LABEL_183;
        }

        goto LABEL_102;
      }

      if (a4 != 384)
      {
        if (a4 == 390)
        {
          goto LABEL_82;
        }

        if (a4 != 430)
        {
          goto LABEL_102;
        }

LABEL_138:
        *&a4 = 23;
        goto LABEL_23;
      }

LABEL_137:
      *&a4 = 9;
      goto LABEL_23;
    }

    if (a4 > 495)
    {
      if (a4 == 496)
      {
        goto LABEL_135;
      }

      if (a4 != 502)
      {
        if (a4 == 514)
        {
          goto LABEL_177;
        }

        goto LABEL_102;
      }

LABEL_136:
      *&a4 = 28;
      goto LABEL_23;
    }

    if (a4 == 446)
    {
      goto LABEL_155;
    }

    if (a4 != 484)
    {
      goto LABEL_102;
    }

LABEL_154:
    *&a4 = 24;
    goto LABEL_23;
  }

LABEL_65:
  if (platform > 2)
  {
    goto LABEL_102;
  }

  if (a4 <= 2435)
  {
    if (a4 <= 2223)
    {
      if (a4 <= 569)
      {
        if (a4 == 163)
        {
          goto LABEL_109;
        }

        if (a4 != 568)
        {
          if (a4 != 569)
          {
            goto LABEL_102;
          }

LABEL_157:
          *&a4 = 2;
          goto LABEL_23;
        }

LABEL_78:
        *&a4 = 1;
        goto LABEL_23;
      }

      if (a4 != 570)
      {
        if (a4 != 1792)
        {
          if (a4 != 2160)
          {
            goto LABEL_102;
          }

          goto LABEL_164;
        }

LABEL_165:
        *&a4 = 16;
        goto LABEL_23;
      }

LABEL_166:
      *&a4 = 3;
      goto LABEL_23;
    }

    if (a4 <= 2359)
    {
      if (a4 != 2224)
      {
        if (a4 != 2266)
        {
          if (a4 != 2340)
          {
            goto LABEL_102;
          }

          goto LABEL_143;
        }

LABEL_158:
        *&a4 = 25;
        goto LABEL_23;
      }

LABEL_159:
      *&a4 = 10;
      goto LABEL_23;
    }

    if (a4 != 2360)
    {
      if (a4 != 2388)
      {
        if (a4 != 2420)
        {
          goto LABEL_102;
        }

        goto LABEL_170;
      }

LABEL_171:
      *&a4 = 15;
      goto LABEL_23;
    }

LABEL_172:
    *&a4 = 20;
    goto LABEL_23;
  }

  if (a4 <= 2735)
  {
    if (a4 <= 2621)
    {
      if (a4 != 2436)
      {
        if (a4 != 2532)
        {
          if (a4 != 2556)
          {
            goto LABEL_102;
          }

LABEL_155:
          *&a4 = 29;
          goto LABEL_23;
        }

LABEL_156:
        *&a4 = 22;
        goto LABEL_23;
      }

LABEL_160:
      *&a4 = 11;
      goto LABEL_23;
    }

    if (a4 != 2622)
    {
      if (a4 != 2688)
      {
        if (a4 != 2732)
        {
          goto LABEL_102;
        }

        goto LABEL_182;
      }

LABEL_184:
      *&a4 = 12;
      goto LABEL_23;
    }

LABEL_183:
    *&a4 = 13;
    goto LABEL_23;
  }

  if (a4 <= 2795)
  {
    if (a4 != 2736)
    {
      if (a4 != 2752)
      {
        if (a4 != 2778)
        {
          goto LABEL_102;
        }

        goto LABEL_176;
      }

LABEL_178:
      *&a4 = 8;
      goto LABEL_23;
    }

LABEL_177:
    *&a4 = 31;
    goto LABEL_23;
  }

  if (a4 <= 3023)
  {
    if (a4 != 2796)
    {
      if (a4 != 2868)
      {
        goto LABEL_102;
      }

LABEL_82:
      *&a4 = 14;
      goto LABEL_23;
    }

LABEL_135:
    *&a4 = 30;
    goto LABEL_23;
  }

  if (a4 != 3024)
  {
    if (a4 != 32401)
    {
      goto LABEL_102;
    }

    goto LABEL_187;
  }

LABEL_188:
  *&a4 = 6;
LABEL_23:
  v15 = keyFormat->var2;
  if (v15)
  {
    v16 = 0;
    v17 = a4;
    while (keyFormat->var3[v16] != v8)
    {
      ++v16;
      v17 += 32;
      if (v15 == v16)
      {
        return;
      }
    }

    if (v16 < 33)
    {
      if ((v17 & 0x80000000) == 0)
      {
        bitmap = self->_bitmap;

        CUIBitVectorUnSetBit(bitmap, v17);
      }
    }

    else
    {
      _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", *&a3, a4, v4, v5, v6, v7, v8);
    }
  }
}

- (void)decrementValue:(int64_t *)a3 forAttribute:(int)a4
{
  v8 = *&a4;
  v11 = *a3;
  keyFormat = self->_keyFormat;
  platform = self->_platform;
  if (a4 == 16 && platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v16 = *var3++;
      if (v16 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return;
      }
    }
  }

  if (a4 <= 0x1C)
  {
    if (((1 << a4) & 0x100600E6) != 0)
    {
      return;
    }

    if (a4 == 13)
    {
      LOWORD(v11) = *a3 != 0;
    }

    else if (a4 == 16)
    {
      if (platform == -1)
      {
        v29 = *a3;
        if (v29 > 0x86F)
        {
          if (*a3 > 0x9E3u)
          {
            if (*a3 > 0xAD9u)
            {
              if (*a3 > 0xEFFu)
              {
                if (v29 == 3840)
                {
                  goto LABEL_357;
                }

                if (v29 == 32401)
                {
LABEL_374:
                  LOWORD(v11) = 17;
                  goto LABEL_23;
                }
              }

              else
              {
                if (v29 == 2778)
                {
LABEL_363:
                  LOWORD(v11) = 19;
                  goto LABEL_23;
                }

                if (v29 == 2796)
                {
                  goto LABEL_322;
                }
              }
            }

            else if (*a3 > 0xA7Fu)
            {
              if (v29 == 2688)
              {
                goto LABEL_371;
              }

              if (v29 == 2732)
              {
LABEL_369:
                LOWORD(v11) = 4;
                goto LABEL_23;
              }
            }

            else
            {
              if (v29 == 2532)
              {
                goto LABEL_343;
              }

              if (v29 == 2556)
              {
                goto LABEL_342;
              }
            }
          }

          else if (*a3 > 0x923u)
          {
            if (*a3 > 0x953u)
            {
              if (v29 == 2388)
              {
                goto LABEL_358;
              }

              if (v29 == 2436)
              {
                goto LABEL_347;
              }
            }

            else
            {
              if (v29 == 2340)
              {
LABEL_330:
                LOWORD(v11) = 18;
                goto LABEL_23;
              }

              if (v29 == 2360)
              {
                goto LABEL_359;
              }
            }
          }

          else if (*a3 > 0x8B9u)
          {
            if (v29 == 2234)
            {
LABEL_303:
              LOWORD(v11) = 27;
              goto LABEL_23;
            }

            if (v29 == 2266)
            {
              goto LABEL_345;
            }
          }

          else
          {
            if (v29 == 2160)
            {
LABEL_351:
              LOWORD(v11) = 21;
              goto LABEL_23;
            }

            if (v29 == 2224)
            {
              goto LABEL_346;
            }
          }
        }

        else if (*a3 > 0x1F5u)
        {
          if (*a3 > 0x2CFu)
          {
            if (*a3 > 0x6FFu)
            {
              if (v29 == 1792)
              {
                goto LABEL_352;
              }

              if (v29 == 1964)
              {
                goto LABEL_318;
              }
            }

            else
            {
              if (v29 == 720)
              {
                goto LABEL_375;
              }

              if (v29 == 1665)
              {
                goto LABEL_364;
              }
            }
          }

          else if (*a3 > 0x238u)
          {
            if (v29 == 569)
            {
              goto LABEL_344;
            }

            if (v29 == 570)
            {
              goto LABEL_353;
            }
          }

          else
          {
            if (v29 == 502)
            {
              goto LABEL_323;
            }

            if (v29 == 568)
            {
              goto LABEL_265;
            }
          }
        }

        else if (*a3 > 0x17Fu)
        {
          if (*a3 > 0x1ADu)
          {
            if (v29 == 430)
            {
              goto LABEL_325;
            }

            if (v29 == 484)
            {
              goto LABEL_341;
            }
          }

          else
          {
            if (v29 == 384)
            {
              goto LABEL_324;
            }

            if (v29 == 390)
            {
              goto LABEL_269;
            }
          }
        }

        else if (*a3 > 0x13Fu)
        {
          if (v29 == 320)
          {
            goto LABEL_365;
          }

          if (v29 == 340)
          {
            goto LABEL_370;
          }
        }

        else
        {
          if (!*a3)
          {
            goto LABEL_23;
          }

          if (v29 == 163)
          {
            goto LABEL_296;
          }
        }

        _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", a3, *&a4, v4, v5, v6, v7, "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)");
        LOWORD(v11) = -1;
        goto LABEL_23;
      }

      if (*a3)
      {
        if (platform <= 3)
        {
          if (platform)
          {
            if (platform == 3)
            {
              v17 = *a3;
              if (v17 != 3840)
              {
                if (v17 != 1088)
                {
                  if (v17 != 720)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_375;
                }

                goto LABEL_296;
              }

LABEL_357:
              LOWORD(v11) = 7;
              goto LABEL_23;
            }

LABEL_252:
            if (platform > 2)
            {
              goto LABEL_289;
            }

            v31 = *a3;
            if (v31 > 0x983)
            {
              if (*a3 > 0xAAFu)
              {
                if (*a3 > 0xAEBu)
                {
                  if (*a3 <= 0xBCFu)
                  {
                    if (v31 != 2796)
                    {
                      if (v31 != 2868)
                      {
                        goto LABEL_289;
                      }

                      goto LABEL_269;
                    }

LABEL_322:
                    LOWORD(v11) = 30;
                    goto LABEL_23;
                  }

                  if (v31 != 3024)
                  {
                    if (v31 != 32401)
                    {
                      goto LABEL_289;
                    }

                    goto LABEL_374;
                  }

LABEL_375:
                  LOWORD(v11) = 6;
                  goto LABEL_23;
                }

                if (v31 != 2736)
                {
                  if (v31 != 2752)
                  {
                    if (v31 != 2778)
                    {
                      goto LABEL_289;
                    }

                    goto LABEL_363;
                  }

LABEL_365:
                  LOWORD(v11) = 8;
                  goto LABEL_23;
                }

LABEL_364:
                LOWORD(v11) = 31;
                goto LABEL_23;
              }

              if (*a3 <= 0xA3Du)
              {
                if (v31 != 2436)
                {
                  if (v31 != 2532)
                  {
                    if (v31 != 2556)
                    {
                      goto LABEL_289;
                    }

LABEL_342:
                    LOWORD(v11) = 29;
                    goto LABEL_23;
                  }

LABEL_343:
                  LOWORD(v11) = 22;
                  goto LABEL_23;
                }

LABEL_347:
                LOWORD(v11) = 11;
                goto LABEL_23;
              }

              if (v31 != 2622)
              {
                if (v31 != 2688)
                {
                  if (v31 != 2732)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_369;
                }

LABEL_371:
                LOWORD(v11) = 12;
                goto LABEL_23;
              }

LABEL_370:
              LOWORD(v11) = 13;
              goto LABEL_23;
            }

            if (*a3 <= 0x8AFu)
            {
              if (*a3 <= 0x239u)
              {
                if (v31 != 163)
                {
                  if (v31 != 568)
                  {
                    if (v31 != 569)
                    {
                      goto LABEL_289;
                    }

LABEL_344:
                    LOWORD(v11) = 2;
                    goto LABEL_23;
                  }

                  goto LABEL_265;
                }

LABEL_296:
                LOWORD(v11) = 5;
                goto LABEL_23;
              }

              if (v31 != 570)
              {
                if (v31 != 1792)
                {
                  if (v31 != 2160)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_351;
                }

LABEL_352:
                LOWORD(v11) = 16;
                goto LABEL_23;
              }

LABEL_353:
              LOWORD(v11) = 3;
              goto LABEL_23;
            }

            if (*a3 <= 0x937u)
            {
              if (v31 != 2224)
              {
                if (v31 != 2266)
                {
                  if (v31 != 2340)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_330;
                }

LABEL_345:
                LOWORD(v11) = 25;
                goto LABEL_23;
              }

LABEL_346:
              LOWORD(v11) = 10;
              goto LABEL_23;
            }

            if (v31 != 2360)
            {
              if (v31 != 2388)
              {
                if (v31 != 2420)
                {
                  goto LABEL_289;
                }

                goto LABEL_357;
              }

LABEL_358:
              LOWORD(v11) = 15;
              goto LABEL_23;
            }

LABEL_359:
            LOWORD(v11) = 20;
            goto LABEL_23;
          }

          v32 = *a3;
          if (v32 <= 0x7AB)
          {
            if (v32 == 1665)
            {
              goto LABEL_364;
            }

            if (v32 != 1864)
            {
              goto LABEL_289;
            }

LABEL_265:
            LOWORD(v11) = 1;
            goto LABEL_23;
          }

          if (v32 != 1964)
          {
            if (v32 != 2234)
            {
              goto LABEL_289;
            }

            goto LABEL_303;
          }

LABEL_318:
          LOWORD(v11) = 26;
          goto LABEL_23;
        }

        if (platform == 5)
        {
          if (*a3 != 3648)
          {
            goto LABEL_289;
          }

          goto LABEL_265;
        }

        if (platform != 4)
        {
          goto LABEL_252;
        }

        v30 = *a3;
        if (v30 <= 0x1BD)
        {
          if (*a3 <= 0x17Fu)
          {
            if (v30 == 320)
            {
              goto LABEL_365;
            }

            if (v30 == 340)
            {
              goto LABEL_370;
            }

LABEL_289:
            [CUINamedRenditionInfo decrementValue:v11 forAttribute:platform];
          }

          if (v30 != 384)
          {
            if (v30 != 390)
            {
              if (v30 != 430)
              {
                goto LABEL_289;
              }

LABEL_325:
              LOWORD(v11) = 23;
              goto LABEL_23;
            }

LABEL_269:
            LOWORD(v11) = 14;
            goto LABEL_23;
          }

LABEL_324:
          LOWORD(v11) = 9;
          goto LABEL_23;
        }

        if (*a3 > 0x1EFu)
        {
          if (v30 == 496)
          {
            goto LABEL_322;
          }

          if (v30 != 502)
          {
            if (v30 == 514)
            {
              goto LABEL_364;
            }

            goto LABEL_289;
          }

LABEL_323:
          LOWORD(v11) = 28;
          goto LABEL_23;
        }

        if (v30 == 446)
        {
          goto LABEL_342;
        }

        if (v30 != 484)
        {
          goto LABEL_289;
        }

LABEL_341:
        LOWORD(v11) = 24;
        goto LABEL_23;
      }

      LOWORD(v11) = 0;
    }
  }

LABEL_23:
  v18 = keyFormat->var2;
  if (v18)
  {
    v19 = 0;
    v20 = v11;
    while (keyFormat->var3[v19] != v8)
    {
      ++v19;
      v20 += 32;
      if (v18 == v19)
      {
        return;
      }
    }

    if (v19 > 32)
    {
LABEL_29:
      _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", a3, *&a4, v4, v5, v6, v7, v8);
      return;
    }

    if ((v20 & 0x80000000) == 0 && *a3)
    {
      do
      {
        if (CUIBitVectorIsBitSet(self->_bitmap, v20))
        {
          return;
        }

        v21 = *a3 - 1;
        *a3 = v21;
        v23 = self->_keyFormat;
        v22 = self->_platform;
        if (v8 == 16 && v22 == -1)
        {
          v24 = v23->var2;
          if (!v24)
          {
            return;
          }

          v25 = v23->var3;
          while (1)
          {
            v26 = *v25++;
            if (v26 == 16)
            {
              break;
            }

            if (!--v24)
            {
              return;
            }
          }
        }

        if (v8 <= 0x1C)
        {
          if (v8 == 13)
          {
            LOWORD(v21) = v21 != 0;
            goto LABEL_211;
          }

          if (v8 == 16)
          {
            if (v22 == -1)
            {
              if (v21 > 0x86Fu)
              {
                if (v21 <= 0x9E3u)
                {
                  if (v21 <= 0x923u)
                  {
                    if (v21 > 0x8B9u)
                    {
                      if (v21 == 2234)
                      {
                        goto LABEL_138;
                      }

                      if (v21 != 2266)
                      {
                        goto LABEL_156;
                      }

LABEL_180:
                      LOWORD(v21) = 25;
                      goto LABEL_211;
                    }

                    if (v21 != 2160)
                    {
                      if (v21 != 2224)
                      {
                        goto LABEL_156;
                      }

LABEL_181:
                      LOWORD(v21) = 10;
                      goto LABEL_211;
                    }

                    goto LABEL_186;
                  }

                  if (v21 > 0x953u)
                  {
                    if (v21 != 2388)
                    {
                      if (v21 != 2436)
                      {
                        goto LABEL_156;
                      }

LABEL_182:
                      LOWORD(v21) = 11;
                      goto LABEL_211;
                    }

LABEL_193:
                    LOWORD(v21) = 15;
                    goto LABEL_211;
                  }

                  if (v21 == 2340)
                  {
                    goto LABEL_165;
                  }

                  if (v21 != 2360)
                  {
                    goto LABEL_156;
                  }

                  goto LABEL_194;
                }

                if (v21 <= 0xAD9u)
                {
                  if (v21 <= 0xA7Fu)
                  {
                    if (v21 != 2532)
                    {
                      if (v21 != 2556)
                      {
                        goto LABEL_156;
                      }

                      goto LABEL_177;
                    }

                    goto LABEL_178;
                  }

                  if (v21 != 2688)
                  {
                    if (v21 != 2732)
                    {
                      goto LABEL_156;
                    }

                    goto LABEL_204;
                  }

LABEL_206:
                  LOWORD(v21) = 12;
                  goto LABEL_211;
                }

                if (v21 <= 0xEFFu)
                {
                  if (v21 != 2778)
                  {
                    if (v21 != 2796)
                    {
                      goto LABEL_156;
                    }

                    goto LABEL_157;
                  }

                  goto LABEL_198;
                }

                if (v21 == 3840)
                {
                  goto LABEL_192;
                }

                if (v21 != 32401)
                {
                  goto LABEL_156;
                }

                goto LABEL_209;
              }

              if (v21 <= 0x1F5u)
              {
                if (v21 > 0x17Fu)
                {
                  if (v21 <= 0x1ADu)
                  {
                    if (v21 != 384)
                    {
                      if (v21 == 390)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_156;
                    }

LABEL_159:
                    LOWORD(v21) = 9;
                    goto LABEL_211;
                  }

                  if (v21 == 430)
                  {
                    goto LABEL_160;
                  }

                  if (v21 != 484)
                  {
                    goto LABEL_156;
                  }

                  goto LABEL_176;
                }

                if (v21 <= 0x13Fu)
                {
                  if (!v21)
                  {
                    goto LABEL_211;
                  }

                  if (v21 == 163)
                  {
LABEL_131:
                    LOWORD(v21) = 5;
                    goto LABEL_211;
                  }

                  goto LABEL_156;
                }

                if (v21 == 320)
                {
                  goto LABEL_200;
                }

                if (v21 != 340)
                {
                  goto LABEL_156;
                }

LABEL_205:
                LOWORD(v21) = 13;
                goto LABEL_211;
              }

              if (v21 <= 0x2CFu)
              {
                if (v21 <= 0x238u)
                {
                  if (v21 != 502)
                  {
                    if (v21 == 568)
                    {
                      goto LABEL_100;
                    }

LABEL_156:
                    _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", a3, *&a4, v4, v5, v6, v7, "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)");
                    LOWORD(v21) = -1;
                    goto LABEL_211;
                  }

LABEL_158:
                  LOWORD(v21) = 28;
                  goto LABEL_211;
                }

                if (v21 == 569)
                {
                  goto LABEL_179;
                }

                if (v21 != 570)
                {
                  goto LABEL_156;
                }

LABEL_188:
                LOWORD(v21) = 3;
                goto LABEL_211;
              }

              if (v21 > 0x6FFu)
              {
                if (v21 != 1792)
                {
                  if (v21 == 1964)
                  {
                    goto LABEL_153;
                  }

                  goto LABEL_156;
                }

LABEL_187:
                LOWORD(v21) = 16;
                goto LABEL_211;
              }

              if (v21 != 720)
              {
                if (v21 != 1665)
                {
                  goto LABEL_156;
                }

                goto LABEL_199;
              }

              goto LABEL_210;
            }

            if (!v21)
            {
              LOWORD(v21) = 0;
              goto LABEL_211;
            }

            if (v22 > 3)
            {
              if (v22 == 5)
              {
                if (v21 != 3648)
                {
                  goto LABEL_376;
                }

                goto LABEL_100;
              }

              if (v22 == 4)
              {
                if (v21 > 0x1BDu)
                {
                  if (v21 <= 0x1EFu)
                  {
                    if (v21 != 446)
                    {
                      if (v21 != 484)
                      {
                        goto LABEL_376;
                      }

LABEL_176:
                      LOWORD(v21) = 24;
                      goto LABEL_211;
                    }

                    goto LABEL_177;
                  }

                  if (v21 == 496)
                  {
                    goto LABEL_157;
                  }

                  if (v21 == 502)
                  {
                    goto LABEL_158;
                  }

                  if (v21 != 514)
                  {
                    goto LABEL_376;
                  }

                  goto LABEL_199;
                }

                if (v21 > 0x17Fu)
                {
                  if (v21 == 384)
                  {
                    goto LABEL_159;
                  }

                  if (v21 == 390)
                  {
                    goto LABEL_104;
                  }

                  if (v21 != 430)
                  {
                    goto LABEL_376;
                  }

LABEL_160:
                  LOWORD(v21) = 23;
                  goto LABEL_211;
                }

                if (v21 == 320)
                {
                  goto LABEL_200;
                }

                if (v21 != 340)
                {
                  goto LABEL_376;
                }

                goto LABEL_205;
              }
            }

            else
            {
              if (!v22)
              {
                if (v21 > 0x7ABu)
                {
                  if (v21 != 1964)
                  {
                    if (v21 != 2234)
                    {
                      goto LABEL_376;
                    }

LABEL_138:
                    LOWORD(v21) = 27;
                    goto LABEL_211;
                  }

LABEL_153:
                  LOWORD(v21) = 26;
                  goto LABEL_211;
                }

                if (v21 != 1665)
                {
                  if (v21 != 1864)
                  {
                    goto LABEL_376;
                  }

LABEL_100:
                  LOWORD(v21) = 1;
                  goto LABEL_211;
                }

LABEL_199:
                LOWORD(v21) = 31;
                goto LABEL_211;
              }

              if (v22 == 3)
              {
                if (v21 == 3840)
                {
                  goto LABEL_192;
                }

                if (v21 == 1088)
                {
                  goto LABEL_131;
                }

                if (v21 != 720)
                {
                  goto LABEL_376;
                }

LABEL_210:
                LOWORD(v21) = 6;
                goto LABEL_211;
              }
            }

            if (v22 > 2)
            {
              goto LABEL_376;
            }

            if (v21 <= 0x983u)
            {
              if (v21 <= 0x8AFu)
              {
                if (v21 <= 0x239u)
                {
                  if (v21 == 163)
                  {
                    goto LABEL_131;
                  }

                  if (v21 == 568)
                  {
                    goto LABEL_100;
                  }

                  if (v21 != 569)
                  {
                    goto LABEL_376;
                  }

LABEL_179:
                  LOWORD(v21) = 2;
                  goto LABEL_211;
                }

                if (v21 != 570)
                {
                  if (v21 != 1792)
                  {
                    if (v21 != 2160)
                    {
                      goto LABEL_376;
                    }

LABEL_186:
                    LOWORD(v21) = 21;
                    goto LABEL_211;
                  }

                  goto LABEL_187;
                }

                goto LABEL_188;
              }

              if (v21 <= 0x937u)
              {
                if (v21 != 2224)
                {
                  if (v21 != 2266)
                  {
                    if (v21 != 2340)
                    {
                      goto LABEL_376;
                    }

LABEL_165:
                    LOWORD(v21) = 18;
                    goto LABEL_211;
                  }

                  goto LABEL_180;
                }

                goto LABEL_181;
              }

              if (v21 != 2360)
              {
                if (v21 != 2388)
                {
                  if (v21 != 2420)
                  {
                    goto LABEL_376;
                  }

LABEL_192:
                  LOWORD(v21) = 7;
                  goto LABEL_211;
                }

                goto LABEL_193;
              }

LABEL_194:
              LOWORD(v21) = 20;
              goto LABEL_211;
            }

            if (v21 <= 0xAAFu)
            {
              if (v21 <= 0xA3Du)
              {
                if (v21 != 2436)
                {
                  if (v21 != 2532)
                  {
                    if (v21 != 2556)
                    {
                      goto LABEL_376;
                    }

LABEL_177:
                    LOWORD(v21) = 29;
                    goto LABEL_211;
                  }

LABEL_178:
                  LOWORD(v21) = 22;
                  goto LABEL_211;
                }

                goto LABEL_182;
              }

              if (v21 == 2622)
              {
                goto LABEL_205;
              }

              if (v21 != 2688)
              {
                if (v21 != 2732)
                {
                  goto LABEL_376;
                }

LABEL_204:
                LOWORD(v21) = 4;
                goto LABEL_211;
              }

              goto LABEL_206;
            }

            if (v21 <= 0xAEBu)
            {
              if (v21 == 2736)
              {
                goto LABEL_199;
              }

              if (v21 != 2752)
              {
                if (v21 != 2778)
                {
                  goto LABEL_376;
                }

LABEL_198:
                LOWORD(v21) = 19;
                goto LABEL_211;
              }

LABEL_200:
              LOWORD(v21) = 8;
              goto LABEL_211;
            }

            if (v21 <= 0xBCFu)
            {
              if (v21 != 2796)
              {
                if (v21 != 2868)
                {
                  goto LABEL_376;
                }

LABEL_104:
                LOWORD(v21) = 14;
                goto LABEL_211;
              }

LABEL_157:
              LOWORD(v21) = 30;
              goto LABEL_211;
            }

            if (v21 != 3024)
            {
              if (v21 != 32401)
              {
LABEL_376:
                [CUINamedRenditionInfo decrementValue:v21 forAttribute:v22];
              }

LABEL_209:
              LOWORD(v21) = 17;
              goto LABEL_211;
            }

            goto LABEL_210;
          }

          if (((1 << v8) & 0x100600E6) != 0)
          {
            return;
          }
        }

LABEL_211:
        v27 = v23->var2;
        if (!v27)
        {
          return;
        }

        v28 = 0;
        v20 = v21;
        while (v23->var3[v28] != v8)
        {
          v20 += 32;
          if (v27 == ++v28)
          {
            return;
          }
        }

        if (v28 > 32)
        {
          goto LABEL_29;
        }
      }

      while (*a3 && (v20 & 0x80000000) == 0);
    }
  }
}

- (void)incrementIndex:(unint64_t *)a3 inValues:(id)a4 forAttribute:(int)a5
{
  v5 = *&a5;
  v9 = [a4 count];
  platform = self->_platform;
  v11 = [objc_msgSend(a4 objectAtIndex:{*a3), "integerValue"}];
  keyFormat = self->_keyFormat;
  if (v5 == 16 && platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v21 = *var3++;
      if (v21 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return;
      }
    }
  }

  if (v5 <= 0x1C)
  {
    if (((1 << v5) & 0x100600E6) != 0)
    {
      return;
    }

    if (v5 == 13)
    {
      LOWORD(v11) = v11 != 0;
    }

    else if (v5 == 16)
    {
      if (platform == -1)
      {
        if (v11 > 0x86Fu)
        {
          if (v11 > 0x9E3u)
          {
            if (v11 > 0xAD9u)
            {
              if (v11 > 0xEFFu)
              {
                if (v11 == 3840)
                {
                  goto LABEL_357;
                }

                if (v11 == 32401)
                {
LABEL_374:
                  LOWORD(v11) = 17;
                  goto LABEL_23;
                }
              }

              else
              {
                if (v11 == 2778)
                {
LABEL_363:
                  LOWORD(v11) = 19;
                  goto LABEL_23;
                }

                if (v11 == 2796)
                {
                  goto LABEL_322;
                }
              }
            }

            else if (v11 > 0xA7Fu)
            {
              if (v11 == 2688)
              {
                goto LABEL_371;
              }

              if (v11 == 2732)
              {
LABEL_369:
                LOWORD(v11) = 4;
                goto LABEL_23;
              }
            }

            else
            {
              if (v11 == 2532)
              {
                goto LABEL_343;
              }

              if (v11 == 2556)
              {
                goto LABEL_342;
              }
            }
          }

          else if (v11 > 0x923u)
          {
            if (v11 > 0x953u)
            {
              if (v11 == 2388)
              {
                goto LABEL_358;
              }

              if (v11 == 2436)
              {
                goto LABEL_347;
              }
            }

            else
            {
              if (v11 == 2340)
              {
LABEL_330:
                LOWORD(v11) = 18;
                goto LABEL_23;
              }

              if (v11 == 2360)
              {
                goto LABEL_359;
              }
            }
          }

          else if (v11 > 0x8B9u)
          {
            if (v11 == 2234)
            {
LABEL_303:
              LOWORD(v11) = 27;
              goto LABEL_23;
            }

            if (v11 == 2266)
            {
              goto LABEL_345;
            }
          }

          else
          {
            if (v11 == 2160)
            {
LABEL_351:
              LOWORD(v11) = 21;
              goto LABEL_23;
            }

            if (v11 == 2224)
            {
              goto LABEL_346;
            }
          }
        }

        else if (v11 > 0x1F5u)
        {
          if (v11 > 0x2CFu)
          {
            if (v11 > 0x6FFu)
            {
              if (v11 == 1792)
              {
                goto LABEL_352;
              }

              if (v11 == 1964)
              {
                goto LABEL_318;
              }
            }

            else
            {
              if (v11 == 720)
              {
                goto LABEL_375;
              }

              if (v11 == 1665)
              {
                goto LABEL_364;
              }
            }
          }

          else if (v11 > 0x238u)
          {
            if (v11 == 569)
            {
              goto LABEL_344;
            }

            if (v11 == 570)
            {
              goto LABEL_353;
            }
          }

          else
          {
            if (v11 == 502)
            {
              goto LABEL_323;
            }

            if (v11 == 568)
            {
              goto LABEL_265;
            }
          }
        }

        else if (v11 > 0x17Fu)
        {
          if (v11 > 0x1ADu)
          {
            if (v11 == 430)
            {
              goto LABEL_325;
            }

            if (v11 == 484)
            {
              goto LABEL_341;
            }
          }

          else
          {
            if (v11 == 384)
            {
              goto LABEL_324;
            }

            if (v11 == 390)
            {
              goto LABEL_269;
            }
          }
        }

        else if (v11 > 0x13Fu)
        {
          if (v11 == 320)
          {
            goto LABEL_365;
          }

          if (v11 == 340)
          {
            goto LABEL_370;
          }
        }

        else
        {
          if (!v11)
          {
            goto LABEL_23;
          }

          if (v11 == 163)
          {
            goto LABEL_296;
          }
        }

        _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", v12, v13, v14, v15, v16, v17, "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)");
        LOWORD(v11) = -1;
        goto LABEL_23;
      }

      if (v11)
      {
        if (platform <= 3)
        {
          if (platform)
          {
            if (platform == 3)
            {
              if (v11 != 3840)
              {
                if (v11 != 1088)
                {
                  if (v11 != 720)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_375;
                }

                goto LABEL_296;
              }

LABEL_357:
              LOWORD(v11) = 7;
              goto LABEL_23;
            }

LABEL_252:
            if (platform > 2)
            {
              goto LABEL_289;
            }

            if (v11 > 0x983u)
            {
              if (v11 > 0xAAFu)
              {
                if (v11 > 0xAEBu)
                {
                  if (v11 <= 0xBCFu)
                  {
                    if (v11 != 2796)
                    {
                      if (v11 != 2868)
                      {
                        goto LABEL_289;
                      }

                      goto LABEL_269;
                    }

LABEL_322:
                    LOWORD(v11) = 30;
                    goto LABEL_23;
                  }

                  if (v11 != 3024)
                  {
                    if (v11 != 32401)
                    {
                      goto LABEL_289;
                    }

                    goto LABEL_374;
                  }

LABEL_375:
                  LOWORD(v11) = 6;
                  goto LABEL_23;
                }

                if (v11 != 2736)
                {
                  if (v11 != 2752)
                  {
                    if (v11 != 2778)
                    {
                      goto LABEL_289;
                    }

                    goto LABEL_363;
                  }

LABEL_365:
                  LOWORD(v11) = 8;
                  goto LABEL_23;
                }

LABEL_364:
                LOWORD(v11) = 31;
                goto LABEL_23;
              }

              if (v11 <= 0xA3Du)
              {
                if (v11 != 2436)
                {
                  if (v11 != 2532)
                  {
                    if (v11 != 2556)
                    {
                      goto LABEL_289;
                    }

LABEL_342:
                    LOWORD(v11) = 29;
                    goto LABEL_23;
                  }

LABEL_343:
                  LOWORD(v11) = 22;
                  goto LABEL_23;
                }

LABEL_347:
                LOWORD(v11) = 11;
                goto LABEL_23;
              }

              if (v11 != 2622)
              {
                if (v11 != 2688)
                {
                  if (v11 != 2732)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_369;
                }

LABEL_371:
                LOWORD(v11) = 12;
                goto LABEL_23;
              }

LABEL_370:
              LOWORD(v11) = 13;
              goto LABEL_23;
            }

            if (v11 <= 0x8AFu)
            {
              if (v11 <= 0x239u)
              {
                if (v11 != 163)
                {
                  if (v11 != 568)
                  {
                    if (v11 != 569)
                    {
                      goto LABEL_289;
                    }

LABEL_344:
                    LOWORD(v11) = 2;
                    goto LABEL_23;
                  }

                  goto LABEL_265;
                }

LABEL_296:
                LOWORD(v11) = 5;
                goto LABEL_23;
              }

              if (v11 != 570)
              {
                if (v11 != 1792)
                {
                  if (v11 != 2160)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_351;
                }

LABEL_352:
                LOWORD(v11) = 16;
                goto LABEL_23;
              }

LABEL_353:
              LOWORD(v11) = 3;
              goto LABEL_23;
            }

            if (v11 <= 0x937u)
            {
              if (v11 != 2224)
              {
                if (v11 != 2266)
                {
                  if (v11 != 2340)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_330;
                }

LABEL_345:
                LOWORD(v11) = 25;
                goto LABEL_23;
              }

LABEL_346:
              LOWORD(v11) = 10;
              goto LABEL_23;
            }

            if (v11 != 2360)
            {
              if (v11 != 2388)
              {
                if (v11 != 2420)
                {
                  goto LABEL_289;
                }

                goto LABEL_357;
              }

LABEL_358:
              LOWORD(v11) = 15;
              goto LABEL_23;
            }

LABEL_359:
            LOWORD(v11) = 20;
            goto LABEL_23;
          }

          if (v11 <= 0x7ABu)
          {
            if (v11 == 1665)
            {
              goto LABEL_364;
            }

            if (v11 != 1864)
            {
              goto LABEL_289;
            }

LABEL_265:
            LOWORD(v11) = 1;
            goto LABEL_23;
          }

          if (v11 != 1964)
          {
            if (v11 != 2234)
            {
              goto LABEL_289;
            }

            goto LABEL_303;
          }

LABEL_318:
          LOWORD(v11) = 26;
          goto LABEL_23;
        }

        if (platform == 5)
        {
          if (v11 != 3648)
          {
            goto LABEL_289;
          }

          goto LABEL_265;
        }

        if (platform != 4)
        {
          goto LABEL_252;
        }

        if (v11 <= 0x1BDu)
        {
          if (v11 <= 0x17Fu)
          {
            if (v11 == 320)
            {
              goto LABEL_365;
            }

            if (v11 == 340)
            {
              goto LABEL_370;
            }

LABEL_289:
            [CUINamedRenditionInfo decrementValue:v11 forAttribute:platform];
          }

          if (v11 != 384)
          {
            if (v11 != 390)
            {
              if (v11 != 430)
              {
                goto LABEL_289;
              }

LABEL_325:
              LOWORD(v11) = 23;
              goto LABEL_23;
            }

LABEL_269:
            LOWORD(v11) = 14;
            goto LABEL_23;
          }

LABEL_324:
          LOWORD(v11) = 9;
          goto LABEL_23;
        }

        if (v11 > 0x1EFu)
        {
          if (v11 == 496)
          {
            goto LABEL_322;
          }

          if (v11 != 502)
          {
            if (v11 == 514)
            {
              goto LABEL_364;
            }

            goto LABEL_289;
          }

LABEL_323:
          LOWORD(v11) = 28;
          goto LABEL_23;
        }

        if (v11 == 446)
        {
          goto LABEL_342;
        }

        if (v11 != 484)
        {
          goto LABEL_289;
        }

LABEL_341:
        LOWORD(v11) = 24;
        goto LABEL_23;
      }

      LOWORD(v11) = 0;
    }
  }

LABEL_23:
  v22 = keyFormat->var2;
  if (v22)
  {
    v23 = 0;
    v24 = v11;
    while (keyFormat->var3[v23] != v5)
    {
      ++v23;
      v24 += 32;
      if (v22 == v23)
      {
        return;
      }
    }

    if (v23 > 32)
    {
LABEL_29:
      _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", v12, v13, v14, v15, v16, v17, v5);
      return;
    }

    if ((v24 & 0x80000000) == 0 && *a3 < (v9 - 1))
    {
      do
      {
        if (CUIBitVectorIsBitSet(self->_bitmap, v24))
        {
          return;
        }

        ++*a3;
        v25 = self->_platform;
        v26 = [objc_msgSend(a4 "objectAtIndex:"integerValue"")];
        v27 = self->_keyFormat;
        if (v5 == 16 && v25 == -1)
        {
          v28 = v27->var2;
          if (!v28)
          {
            return;
          }

          v29 = v27->var3;
          while (1)
          {
            v30 = *v29++;
            if (v30 == 16)
            {
              break;
            }

            if (!--v28)
            {
              return;
            }
          }
        }

        if (v5 <= 0x1C)
        {
          if (v5 == 13)
          {
            LOWORD(v26) = v26 != 0;
            goto LABEL_211;
          }

          if (v5 == 16)
          {
            if (v25 == -1)
            {
              if (v26 > 0x86Fu)
              {
                if (v26 <= 0x9E3u)
                {
                  if (v26 <= 0x923u)
                  {
                    if (v26 > 0x8B9u)
                    {
                      if (v26 == 2234)
                      {
                        goto LABEL_138;
                      }

                      if (v26 != 2266)
                      {
                        goto LABEL_156;
                      }

LABEL_180:
                      LOWORD(v26) = 25;
                      goto LABEL_211;
                    }

                    if (v26 != 2160)
                    {
                      if (v26 != 2224)
                      {
                        goto LABEL_156;
                      }

LABEL_181:
                      LOWORD(v26) = 10;
                      goto LABEL_211;
                    }

                    goto LABEL_186;
                  }

                  if (v26 > 0x953u)
                  {
                    if (v26 != 2388)
                    {
                      if (v26 != 2436)
                      {
                        goto LABEL_156;
                      }

LABEL_182:
                      LOWORD(v26) = 11;
                      goto LABEL_211;
                    }

LABEL_193:
                    LOWORD(v26) = 15;
                    goto LABEL_211;
                  }

                  if (v26 == 2340)
                  {
                    goto LABEL_165;
                  }

                  if (v26 != 2360)
                  {
                    goto LABEL_156;
                  }

                  goto LABEL_194;
                }

                if (v26 <= 0xAD9u)
                {
                  if (v26 <= 0xA7Fu)
                  {
                    if (v26 != 2532)
                    {
                      if (v26 != 2556)
                      {
                        goto LABEL_156;
                      }

                      goto LABEL_177;
                    }

                    goto LABEL_178;
                  }

                  if (v26 != 2688)
                  {
                    if (v26 != 2732)
                    {
                      goto LABEL_156;
                    }

                    goto LABEL_204;
                  }

LABEL_206:
                  LOWORD(v26) = 12;
                  goto LABEL_211;
                }

                if (v26 <= 0xEFFu)
                {
                  if (v26 != 2778)
                  {
                    if (v26 != 2796)
                    {
                      goto LABEL_156;
                    }

                    goto LABEL_157;
                  }

                  goto LABEL_198;
                }

                if (v26 == 3840)
                {
                  goto LABEL_192;
                }

                if (v26 != 32401)
                {
                  goto LABEL_156;
                }

                goto LABEL_209;
              }

              if (v26 <= 0x1F5u)
              {
                if (v26 > 0x17Fu)
                {
                  if (v26 <= 0x1ADu)
                  {
                    if (v26 != 384)
                    {
                      if (v26 == 390)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_156;
                    }

LABEL_159:
                    LOWORD(v26) = 9;
                    goto LABEL_211;
                  }

                  if (v26 == 430)
                  {
                    goto LABEL_160;
                  }

                  if (v26 != 484)
                  {
                    goto LABEL_156;
                  }

                  goto LABEL_176;
                }

                if (v26 <= 0x13Fu)
                {
                  if (!v26)
                  {
                    goto LABEL_211;
                  }

                  if (v26 == 163)
                  {
LABEL_131:
                    LOWORD(v26) = 5;
                    goto LABEL_211;
                  }

                  goto LABEL_156;
                }

                if (v26 == 320)
                {
                  goto LABEL_200;
                }

                if (v26 != 340)
                {
                  goto LABEL_156;
                }

LABEL_205:
                LOWORD(v26) = 13;
                goto LABEL_211;
              }

              if (v26 <= 0x2CFu)
              {
                if (v26 <= 0x238u)
                {
                  if (v26 != 502)
                  {
                    if (v26 == 568)
                    {
                      goto LABEL_100;
                    }

LABEL_156:
                    _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", v12, v13, v14, v15, v16, v17, "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)");
                    LOWORD(v26) = -1;
                    goto LABEL_211;
                  }

LABEL_158:
                  LOWORD(v26) = 28;
                  goto LABEL_211;
                }

                if (v26 == 569)
                {
                  goto LABEL_179;
                }

                if (v26 != 570)
                {
                  goto LABEL_156;
                }

LABEL_188:
                LOWORD(v26) = 3;
                goto LABEL_211;
              }

              if (v26 > 0x6FFu)
              {
                if (v26 != 1792)
                {
                  if (v26 == 1964)
                  {
                    goto LABEL_153;
                  }

                  goto LABEL_156;
                }

LABEL_187:
                LOWORD(v26) = 16;
                goto LABEL_211;
              }

              if (v26 != 720)
              {
                if (v26 != 1665)
                {
                  goto LABEL_156;
                }

                goto LABEL_199;
              }

              goto LABEL_210;
            }

            if (!v26)
            {
              LOWORD(v26) = 0;
              goto LABEL_211;
            }

            if (v25 > 3)
            {
              if (v25 == 5)
              {
                if (v26 != 3648)
                {
                  goto LABEL_376;
                }

                goto LABEL_100;
              }

              if (v25 == 4)
              {
                if (v26 > 0x1BDu)
                {
                  if (v26 <= 0x1EFu)
                  {
                    if (v26 != 446)
                    {
                      if (v26 != 484)
                      {
                        goto LABEL_376;
                      }

LABEL_176:
                      LOWORD(v26) = 24;
                      goto LABEL_211;
                    }

                    goto LABEL_177;
                  }

                  if (v26 == 496)
                  {
                    goto LABEL_157;
                  }

                  if (v26 == 502)
                  {
                    goto LABEL_158;
                  }

                  if (v26 != 514)
                  {
                    goto LABEL_376;
                  }

                  goto LABEL_199;
                }

                if (v26 > 0x17Fu)
                {
                  if (v26 == 384)
                  {
                    goto LABEL_159;
                  }

                  if (v26 == 390)
                  {
                    goto LABEL_104;
                  }

                  if (v26 != 430)
                  {
                    goto LABEL_376;
                  }

LABEL_160:
                  LOWORD(v26) = 23;
                  goto LABEL_211;
                }

                if (v26 == 320)
                {
                  goto LABEL_200;
                }

                if (v26 != 340)
                {
                  goto LABEL_376;
                }

                goto LABEL_205;
              }
            }

            else
            {
              if (!v25)
              {
                if (v26 > 0x7ABu)
                {
                  if (v26 != 1964)
                  {
                    if (v26 != 2234)
                    {
                      goto LABEL_376;
                    }

LABEL_138:
                    LOWORD(v26) = 27;
                    goto LABEL_211;
                  }

LABEL_153:
                  LOWORD(v26) = 26;
                  goto LABEL_211;
                }

                if (v26 != 1665)
                {
                  if (v26 != 1864)
                  {
                    goto LABEL_376;
                  }

LABEL_100:
                  LOWORD(v26) = 1;
                  goto LABEL_211;
                }

LABEL_199:
                LOWORD(v26) = 31;
                goto LABEL_211;
              }

              if (v25 == 3)
              {
                if (v26 == 3840)
                {
                  goto LABEL_192;
                }

                if (v26 == 1088)
                {
                  goto LABEL_131;
                }

                if (v26 != 720)
                {
                  goto LABEL_376;
                }

LABEL_210:
                LOWORD(v26) = 6;
                goto LABEL_211;
              }
            }

            if (v25 > 2)
            {
              goto LABEL_376;
            }

            if (v26 <= 0x983u)
            {
              if (v26 <= 0x8AFu)
              {
                if (v26 <= 0x239u)
                {
                  if (v26 == 163)
                  {
                    goto LABEL_131;
                  }

                  if (v26 == 568)
                  {
                    goto LABEL_100;
                  }

                  if (v26 != 569)
                  {
                    goto LABEL_376;
                  }

LABEL_179:
                  LOWORD(v26) = 2;
                  goto LABEL_211;
                }

                if (v26 != 570)
                {
                  if (v26 != 1792)
                  {
                    if (v26 != 2160)
                    {
                      goto LABEL_376;
                    }

LABEL_186:
                    LOWORD(v26) = 21;
                    goto LABEL_211;
                  }

                  goto LABEL_187;
                }

                goto LABEL_188;
              }

              if (v26 <= 0x937u)
              {
                if (v26 != 2224)
                {
                  if (v26 != 2266)
                  {
                    if (v26 != 2340)
                    {
                      goto LABEL_376;
                    }

LABEL_165:
                    LOWORD(v26) = 18;
                    goto LABEL_211;
                  }

                  goto LABEL_180;
                }

                goto LABEL_181;
              }

              if (v26 != 2360)
              {
                if (v26 != 2388)
                {
                  if (v26 != 2420)
                  {
                    goto LABEL_376;
                  }

LABEL_192:
                  LOWORD(v26) = 7;
                  goto LABEL_211;
                }

                goto LABEL_193;
              }

LABEL_194:
              LOWORD(v26) = 20;
              goto LABEL_211;
            }

            if (v26 <= 0xAAFu)
            {
              if (v26 <= 0xA3Du)
              {
                if (v26 != 2436)
                {
                  if (v26 != 2532)
                  {
                    if (v26 != 2556)
                    {
                      goto LABEL_376;
                    }

LABEL_177:
                    LOWORD(v26) = 29;
                    goto LABEL_211;
                  }

LABEL_178:
                  LOWORD(v26) = 22;
                  goto LABEL_211;
                }

                goto LABEL_182;
              }

              if (v26 == 2622)
              {
                goto LABEL_205;
              }

              if (v26 != 2688)
              {
                if (v26 != 2732)
                {
                  goto LABEL_376;
                }

LABEL_204:
                LOWORD(v26) = 4;
                goto LABEL_211;
              }

              goto LABEL_206;
            }

            if (v26 <= 0xAEBu)
            {
              if (v26 == 2736)
              {
                goto LABEL_199;
              }

              if (v26 != 2752)
              {
                if (v26 != 2778)
                {
                  goto LABEL_376;
                }

LABEL_198:
                LOWORD(v26) = 19;
                goto LABEL_211;
              }

LABEL_200:
              LOWORD(v26) = 8;
              goto LABEL_211;
            }

            if (v26 <= 0xBCFu)
            {
              if (v26 != 2796)
              {
                if (v26 != 2868)
                {
                  goto LABEL_376;
                }

LABEL_104:
                LOWORD(v26) = 14;
                goto LABEL_211;
              }

LABEL_157:
              LOWORD(v26) = 30;
              goto LABEL_211;
            }

            if (v26 != 3024)
            {
              if (v26 != 32401)
              {
LABEL_376:
                [CUINamedRenditionInfo decrementValue:v26 forAttribute:v25];
              }

LABEL_209:
              LOWORD(v26) = 17;
              goto LABEL_211;
            }

            goto LABEL_210;
          }

          if (((1 << v5) & 0x100600E6) != 0)
          {
            return;
          }
        }

LABEL_211:
        v31 = v27->var2;
        if (!v31)
        {
          return;
        }

        v32 = 0;
        v24 = v26;
        while (v27->var3[v32] != v5)
        {
          v24 += 32;
          if (v31 == ++v32)
          {
            return;
          }
        }

        if (v32 > 32)
        {
          goto LABEL_29;
        }
      }

      while (*a3 < (v9 - 1) && (v24 & 0x80000000) == 0);
    }
  }
}

+ (int)subtypeToIndexWithPlatform:(int64_t)a3 andInput:(unsigned __int16)a4
{
  result = a4;
  if (a3 == -1)
  {
    if (a4 > 2159)
    {
      if (a4 > 2531)
      {
        if (a4 > 2777)
        {
          if (a4 > 3839)
          {
            if (a4 == 3840)
            {
              return 7;
            }

            if (a4 == 32401)
            {
              return 17;
            }
          }

          else
          {
            if (a4 == 2778)
            {
              return 19;
            }

            if (a4 == 2796)
            {
              return 30;
            }
          }
        }

        else if (a4 > 2687)
        {
          if (a4 == 2688)
          {
            return 12;
          }

          if (a4 == 2732)
          {
            return 4;
          }
        }

        else
        {
          if (a4 == 2532)
          {
            return 22;
          }

          if (a4 == 2556)
          {
            return 29;
          }
        }
      }

      else if (a4 > 2339)
      {
        if (a4 > 2387)
        {
          if (a4 == 2388)
          {
            return 15;
          }

          if (a4 == 2436)
          {
            return 11;
          }
        }

        else
        {
          if (a4 == 2340)
          {
            return 18;
          }

          if (a4 == 2360)
          {
            return 20;
          }
        }
      }

      else if (a4 > 2233)
      {
        if (a4 == 2234)
        {
          return 27;
        }

        if (a4 == 2266)
        {
          return 25;
        }
      }

      else
      {
        if (a4 == 2160)
        {
          return 21;
        }

        if (a4 == 2224)
        {
          return 10;
        }
      }
    }

    else if (a4 > 501)
    {
      if (a4 > 719)
      {
        if (a4 > 1791)
        {
          if (a4 == 1792)
          {
            return 16;
          }

          if (a4 == 1964)
          {
            return 26;
          }
        }

        else
        {
          if (a4 == 720)
          {
            return 6;
          }

          if (a4 == 1665)
          {
            return 31;
          }
        }
      }

      else if (a4 > 568)
      {
        if (a4 == 569)
        {
          return 2;
        }

        if (a4 == 570)
        {
          return 3;
        }
      }

      else
      {
        if (a4 == 502)
        {
          return 28;
        }

        if (a4 == 568)
        {
          return 1;
        }
      }
    }

    else if (a4 > 383)
    {
      if (a4 > 429)
      {
        if (a4 == 430)
        {
          return 23;
        }

        if (a4 == 484)
        {
          return 24;
        }
      }

      else
      {
        if (a4 == 384)
        {
          return 9;
        }

        if (a4 == 390)
        {
          return 14;
        }
      }
    }

    else if (a4 > 319)
    {
      if (a4 == 320)
      {
        return 8;
      }

      if (a4 == 340)
      {
        return 13;
      }
    }

    else
    {
      if (!a4)
      {
        return result;
      }

      if (a4 == 163)
      {
        return 5;
      }
    }

    _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", -1, a4, v4, v5, v6, v7, "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)");
    return -1;
  }

  if (!a4)
  {
    return result;
  }

  if (a3 <= 3)
  {
    if (a3)
    {
      if (a3 == 3)
      {
        if (a4 != 3840)
        {
          if (a4 != 1088)
          {
            if (a4 != 720)
            {
              goto LABEL_78;
            }

            return 6;
          }

          return 5;
        }

        return 7;
      }

      goto LABEL_41;
    }

    if (a4 <= 1963)
    {
      if (a4 == 1665)
      {
        return 31;
      }

      if (a4 == 1864)
      {
        return 1;
      }

LABEL_78:
      [CUINamedRenditionInfo attributePresent:a4 withValue:a3];
    }

    if (a4 != 1964)
    {
      if (a4 != 2234)
      {
        goto LABEL_78;
      }

      return 27;
    }

    return 26;
  }

  if (a3 == 5)
  {
    if (a4 != 3648)
    {
      goto LABEL_78;
    }

    return 1;
  }

  if (a3 == 4)
  {
    if (a4 <= 445)
    {
      if (a4 <= 383)
      {
        if (a4 == 320)
        {
          return 8;
        }

        if (a4 == 340)
        {
          return 13;
        }

        goto LABEL_78;
      }

      if (a4 != 384)
      {
        if (a4 == 390)
        {
          return 14;
        }

        if (a4 != 430)
        {
          goto LABEL_78;
        }

        return 23;
      }

      return 9;
    }

    if (a4 > 495)
    {
      if (a4 == 496)
      {
        return 30;
      }

      if (a4 != 502)
      {
        if (a4 == 514)
        {
          return 31;
        }

        goto LABEL_78;
      }

      return 28;
    }

    if (a4 == 446)
    {
      return 29;
    }

    if (a4 != 484)
    {
      goto LABEL_78;
    }

    return 24;
  }

LABEL_41:
  if (a3 > 2)
  {
    goto LABEL_78;
  }

  if (a4 <= 2435)
  {
    if (a4 <= 2223)
    {
      if (a4 <= 569)
      {
        if (a4 == 163)
        {
          return 5;
        }

        if (a4 != 568)
        {
          if (a4 != 569)
          {
            goto LABEL_78;
          }

          return 2;
        }

        return 1;
      }

      if (a4 != 570)
      {
        if (a4 != 1792)
        {
          if (a4 != 2160)
          {
            goto LABEL_78;
          }

          return 21;
        }

        return 16;
      }

      return 3;
    }

    if (a4 <= 2359)
    {
      if (a4 != 2224)
      {
        if (a4 != 2266)
        {
          if (a4 != 2340)
          {
            goto LABEL_78;
          }

          return 18;
        }

        return 25;
      }

      return 10;
    }

    if (a4 != 2360)
    {
      if (a4 != 2388)
      {
        if (a4 != 2420)
        {
          goto LABEL_78;
        }

        return 7;
      }

      return 15;
    }

    return 20;
  }

  if (a4 <= 2735)
  {
    if (a4 <= 2621)
    {
      if (a4 != 2436)
      {
        if (a4 != 2532)
        {
          if (a4 != 2556)
          {
            goto LABEL_78;
          }

          return 29;
        }

        return 22;
      }

      return 11;
    }

    if (a4 != 2622)
    {
      if (a4 != 2688)
      {
        if (a4 != 2732)
        {
          goto LABEL_78;
        }

        return 4;
      }

      return 12;
    }

    return 13;
  }

  if (a4 <= 2795)
  {
    if (a4 != 2736)
    {
      if (a4 != 2752)
      {
        if (a4 != 2778)
        {
          goto LABEL_78;
        }

        return 19;
      }

      return 8;
    }

    return 31;
  }

  if (a4 <= 3023)
  {
    if (a4 != 2796)
    {
      if (a4 != 2868)
      {
        goto LABEL_78;
      }

      return 14;
    }

    return 30;
  }

  if (a4 != 3024)
  {
    if (a4 != 32401)
    {
      goto LABEL_78;
    }

    return 17;
  }

  return 6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = CUIBitVectorCopy(self->_bitmap);
  result = [CUINamedRenditionInfo allocWithZone:a3];
  if (result)
  {
    keyFormat = self->_keyFormat;
    platform = self->_platform;
    v9.receiver = result;
    v9.super_class = CUINamedRenditionInfo;
    result = [(CUINamedRenditionInfo *)&v9 init];
    *(result + 1) = v5;
    *(result + 2) = keyFormat;
    *(result + 3) = platform;
  }

  return result;
}

- (id)bitwiseAndWith:(id)a3
{
  v4 = CUIBitVectorBitAnd(self->_bitmap, *(a3 + 1));
  v5 = [CUINamedRenditionInfo alloc];
  if (v5)
  {
    keyFormat = self->_keyFormat;
    platform = self->_platform;
    v9.receiver = v5;
    v9.super_class = CUINamedRenditionInfo;
    v5 = [(CUINamedRenditionInfo *)&v9 init];
    v5->_bitmap = v4;
    v5->_keyFormat = keyFormat;
    v5->_platform = platform;
  }

  return v5;
}

- (id)bitwiseOrWith:(id)a3 forAttribute:(int)a4
{
  keyFormat = self->_keyFormat;
  var2 = keyFormat->var2;
  if (!var2)
  {
    goto LABEL_8;
  }

  v7 = 0;
  var3 = keyFormat->var3;
  while (var3[v7] != a4)
  {
    if (var2 == ++v7)
    {
      goto LABEL_8;
    }
  }

  if ((v7 & 0x80000000) != 0)
  {
LABEL_8:
    v9 = CUIBitVectorCopy(self->_bitmap);
  }

  else
  {
    v9 = CUIBitVectorBitOrForBucket(self->_bitmap, *(a3 + 1), v7);
  }

  v10 = v9;
  v11 = [CUINamedRenditionInfo alloc];
  if (v11)
  {
    v13 = self->_keyFormat;
    platform = self->_platform;
    v15.receiver = v11;
    v15.super_class = CUINamedRenditionInfo;
    v11 = [(CUINamedRenditionInfo *)&v15 init];
    v11->_bitmap = v10;
    v11->_keyFormat = v13;
    v11->_platform = platform;
  }

  return v11;
}

- (void)attributePresent:(uint64_t)a1 withValue:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a1, a2);
  _CUILog(4, "CoreUI: %s got a device subtype %d is unknown for the platform %d:'%@'", v2, v3, v4, v5, v6, v7, "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)");
  abort();
}

- (void)decrementValue:(uint64_t)a1 forAttribute:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_1(a1, a2);
  _CUILog(4, "CoreUI: %s got a device subtype %d is unknown for the platform %d:'%@'", v2, v3, v4, v5, v6, v7, "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)");
  abort();
}

@end