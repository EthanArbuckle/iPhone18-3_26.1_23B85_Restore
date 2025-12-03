@interface TDPacker
- (BOOL)objectAtIndexFit:(int64_t)fit;
- (CGPoint)fitPositionOfObjectAtIndex:(int64_t)index;
- (CGSize)enclosingSize;
- (id)_findNode:(id)node ofSize:(CGSize)size;
- (id)_growDown:(CGSize)down;
- (id)_growNodeToSize:(CGSize)size;
- (id)_growRight:(CGSize)right;
- (id)_splitNode:(id)node toSize:(CGSize)size;
- (unint64_t)countOfEmptyNodes;
- (void)_countOfEmptyNodes:(id)nodes count:(unint64_t *)count;
- (void)dealloc;
- (void)pack;
- (void)setObjectsToPack:(id)pack;
- (void)setSizeHandler:(id)handler;
@end

@implementation TDPacker

- (void)dealloc
{
  [(TDPacker *)self setRoot:0];
  [(TDPacker *)self setPackedObjects:0];

  v3.receiver = self;
  v3.super_class = TDPacker;
  [(TDPacker *)&v3 dealloc];
}

- (void)setSizeHandler:(id)handler
{
  sizeHandler = self->_sizeHandler;
  if (sizeHandler != handler)
  {

    self->_sizeHandler = [handler copy];
  }
}

- (void)setObjectsToPack:(id)pack
{
  objectsToPack = self->_objectsToPack;
  if (objectsToPack != pack)
  {

    self->_objectsToPack = pack;
    [(TDPacker *)self setPackedObjects:0];

    [(TDPacker *)self setRoot:0];
  }
}

- (void)pack
{
  objectsToPack = [(TDPacker *)self objectsToPack];
  v4 = [(NSArray *)objectsToPack count];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4];
    v17 = objc_alloc_init(_TDPackerNode);
    (*(self->_sizeHandler + 2))(self->_sizeHandler, [(NSArray *)objectsToPack objectAtIndex:0]);
    [(_TDPackerNode *)v17 setSize:?];
    [(TDPacker *)self setRoot:v17];
    v7 = 0;
    v8 = *MEMORY[0x277CBEEE8];
    do
    {
      v9 = (*(self->_sizeHandler + 2))(self->_sizeHandler, [(NSArray *)objectsToPack objectAtIndex:v7]);
      v11 = v10;
      v12 = [(TDPacker *)self _findNode:[(TDPacker *)self root] ofSize:v9, v10];
      if (v12)
      {
        v13 = [(TDPacker *)self _splitNode:v12 toSize:v9, v11];
      }

      else
      {
        v13 = [(TDPacker *)self _growNodeToSize:v9, v11];
      }

      v14 = v13;
      if (v13)
      {
        [v13 setFit:1];
        [v14 setSize:{v9, v11}];
        [v14 setNode:{-[NSArray objectAtIndex:](objectsToPack, "objectAtIndex:", v7)}];
        v15 = v6;
        v16 = v14;
      }

      else
      {
        v15 = v6;
        v16 = v8;
      }

      [v15 addObject:v16];
      ++v7;
    }

    while (v5 != v7);
    [(TDPacker *)self setPackedObjects:v6];
  }

  else
  {
    [(TDPacker *)self setRoot:0];

    [(TDPacker *)self setPackedObjects:0];
  }
}

- (CGSize)enclosingSize
{
  root = [(TDPacker *)self root];

  [(_TDPackerNode *)root size];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_countOfEmptyNodes:(id)nodes count:(unint64_t *)count
{
  if ([nodes fit])
  {
    if ([nodes down])
    {
      -[TDPacker _countOfEmptyNodes:count:](self, "_countOfEmptyNodes:count:", [nodes down], count);
    }

    if ([nodes right])
    {
      right = [nodes right];

      [(TDPacker *)self _countOfEmptyNodes:right count:count];
    }
  }

  else
  {
    *count = (*count + 1.0);
  }
}

- (unint64_t)countOfEmptyNodes
{
  v4 = 0;
  v5 = 0;
  [(TDPacker *)self _countOfEmptyNodes:[(_TDPackerNode *)[(TDPacker *)self root] down] count:&v5];
  [(TDPacker *)self _countOfEmptyNodes:[(_TDPackerNode *)[(TDPacker *)self root] right] count:&v4];
  return v4 + v5;
}

- (BOOL)objectAtIndexFit:(int64_t)fit
{
  v3 = [(NSArray *)self->_packedObjects objectAtIndex:fit];
  if (v3 == *MEMORY[0x277CBEEE8])
  {
    return 0;
  }

  return [v3 fit];
}

- (CGPoint)fitPositionOfObjectAtIndex:(int64_t)index
{
  v3 = [(NSArray *)self->_packedObjects objectAtIndex:index];
  if (v3 == *MEMORY[0x277CBEEE8])
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    [v3 origin];
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (id)_findNode:(id)node ofSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([node used])
  {
    result = -[TDPacker _findNode:ofSize:](self, "_findNode:ofSize:", [node right], width, height);
    if (!result)
    {
      down = [node down];

      return [(TDPacker *)self _findNode:down ofSize:width, height];
    }
  }

  else
  {
    [node size];
    if (width > v10)
    {
      return 0;
    }

    [node size];
    result = node;
    if (height > v11)
    {
      return 0;
    }
  }

  return result;
}

- (id)_splitNode:(id)node toSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = objc_alloc_init(_TDPackerNode);
  v8 = objc_alloc_init(_TDPackerNode);
  [node origin];
  v10 = v9;
  [node origin];
  [(_TDPackerNode *)v7 setOrigin:v10, height + v11];
  [node origin];
  v13 = width + v12;
  [node origin];
  [(_TDPackerNode *)v8 setOrigin:v13];
  [node size];
  v15 = v14;
  [node size];
  [(_TDPackerNode *)v7 setSize:v15, v16 - height];
  [node size];
  [(_TDPackerNode *)v8 setSize:v17 - width, height];
  [node setUsed:1];
  [node setDown:v7];
  [node setRight:v8];

  return node;
}

- (id)_growNodeToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  root = [(TDPacker *)self root];
  [(_TDPackerNode *)root size];
  v8 = v7;
  [(_TDPackerNode *)root size];
  v10 = v9;
  if (height > v9)
  {
    if (width > v8)
    {
      goto LABEL_12;
    }

    v14 = 0;
  }

  else
  {
    [(_TDPackerNode *)root size];
    v12 = v11;
    [(_TDPackerNode *)root size];
    v14 = v12 >= width + v13;
    if (width > v8)
    {
      goto LABEL_7;
    }
  }

  [(_TDPackerNode *)root size];
  v16 = v15;
  [(_TDPackerNode *)root size];
  if (v14 || v16 < height + v17 && height <= v10)
  {
LABEL_7:

    return [(TDPacker *)self _growRight:width, height];
  }

LABEL_12:

  return [(TDPacker *)self _growDown:width, height];
}

- (id)_growRight:(CGSize)right
{
  height = right.height;
  width = right.width;
  root = [(TDPacker *)self root];
  [(_TDPackerNode *)root size];
  v8 = v7;
  v10 = v9;
  v11 = objc_alloc_init(_TDPackerNode);
  [(_TDPackerNode *)v11 setDown:root];
  [(_TDPackerNode *)v11 setUsed:1];
  [(_TDPackerNode *)v11 setOrigin:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(_TDPackerNode *)v11 setSize:width + v8, v10];
  v12 = objc_alloc_init(_TDPackerNode);
  [(_TDPackerNode *)v12 setOrigin:v8, 0.0];
  [(_TDPackerNode *)v12 setSize:width, v10];
  [(_TDPackerNode *)v11 setRight:v12];
  [(TDPacker *)self setRoot:v11];

  result = [(TDPacker *)self _findNode:v11 ofSize:width, height];
  if (result)
  {

    return [(TDPacker *)self _splitNode:result toSize:width, height];
  }

  return result;
}

- (id)_growDown:(CGSize)down
{
  height = down.height;
  width = down.width;
  root = [(TDPacker *)self root];
  [(_TDPackerNode *)root size];
  v8 = v7;
  v10 = v9;
  v11 = objc_alloc_init(_TDPackerNode);
  [(_TDPackerNode *)v11 setRight:root];
  [(_TDPackerNode *)v11 setUsed:1];
  [(_TDPackerNode *)v11 setOrigin:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(_TDPackerNode *)v11 setSize:v8, height + v10];
  v12 = objc_alloc_init(_TDPackerNode);
  [(_TDPackerNode *)v12 setOrigin:0.0, v10];
  [(_TDPackerNode *)v12 setSize:v8, height];
  [(_TDPackerNode *)v11 setDown:v12];
  [(TDPacker *)self setRoot:v11];

  result = [(TDPacker *)self _findNode:v11 ofSize:width, height];
  if (result)
  {

    return [(TDPacker *)self _splitNode:result toSize:width, height];
  }

  return result;
}

@end