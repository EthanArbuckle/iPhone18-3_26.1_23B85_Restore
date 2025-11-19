@interface _CSVisualizerTableFunctions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _CSVisualizerTableFunctions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = MEMORY[0x1BFAE6310](self->_getSummary);
    v6 = v4[1];
    v4[1] = v5;

    v7 = MEMORY[0x1BFAE6310](self->_getDescription);
    v8 = v4[2];
    v4[2] = v7;
  }

  return v4;
}

@end