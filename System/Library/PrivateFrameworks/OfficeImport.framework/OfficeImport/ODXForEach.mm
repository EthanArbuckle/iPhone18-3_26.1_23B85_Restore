@interface ODXForEach
+ (void)readNode:(_xmlNode *)a3 toForEach:(id)a4 state:(id)a5;
@end

@implementation ODXForEach

+ (void)readNode:(_xmlNode *)a3 toForEach:(id)a4 state:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [v9 iteratorSpecification];
  [ODXIteratorSpecification readFromNode:a3 toSpecification:v8 state:v7];

  [ODXLayoutObjectList readNode:a3 toList:v9 state:v7];
}

@end