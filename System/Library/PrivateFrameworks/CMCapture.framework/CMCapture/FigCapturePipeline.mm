@interface FigCapturePipeline
- (BOOL)addNode:(id)a3 error:(id *)a4;
- (BOOL)removeNode:(id)a3;
- (FigCapturePipeline)initWithGraph:(id)a3 name:(id)a4;
- (void)dealloc;
- (void)removeAllNodes;
@end

@implementation FigCapturePipeline

- (FigCapturePipeline)initWithGraph:(id)a3 name:(id)a4
{
  v8.receiver = self;
  v8.super_class = FigCapturePipeline;
  v6 = [(FigCapturePipeline *)&v8 init];
  if (v6)
  {
    v6->_graph = a3;
    v6->_name = [a4 copy];
    v6->_nodes = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCapturePipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

- (BOOL)addNode:(id)a3 error:(id *)a4
{
  v6 = [(BWGraph *)self->_graph addNode:a3 error:a4];
  if (v6)
  {
    [(NSMutableArray *)self->_nodes addObject:a3];
    [a3 setSubgraphName:self->_name];
  }

  return v6;
}

- (BOOL)removeNode:(id)a3
{
  v5 = [(BWGraph *)self->_graph removeNode:?];
  if (v5)
  {
    [(NSMutableArray *)self->_nodes removeObject:a3];
  }

  return v5;
}

- (void)removeAllNodes
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  nodes = self->_nodes;
  v4 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(nodes);
        }

        [(BWGraph *)self->_graph removeNode:*(*(&v9 + 1) + 8 * i)];
      }

      v5 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

@end