@interface IOGPUMetalIntersectionFunctionTable
- (IOGPUMetalIntersectionFunctionTable)initWithVisibleFunctionTable:(id)table;
- (void)dealloc;
@end

@implementation IOGPUMetalIntersectionFunctionTable

- (IOGPUMetalIntersectionFunctionTable)initWithVisibleFunctionTable:(id)table
{
  v6.receiver = self;
  v6.super_class = IOGPUMetalIntersectionFunctionTable;
  v4 = [(IOGPUMetalResource *)&v6 initWithResource:?];
  if (v4)
  {
    v4->_visibleFunctionTable = table;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IOGPUMetalIntersectionFunctionTable;
  [(IOGPUMetalResource *)&v3 dealloc];
}

@end