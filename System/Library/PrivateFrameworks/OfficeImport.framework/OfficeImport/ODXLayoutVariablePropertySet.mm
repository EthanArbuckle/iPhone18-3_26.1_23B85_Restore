@interface ODXLayoutVariablePropertySet
+ (id)directionMap;
+ (void)directionMap;
+ (void)readNode:(_xmlNode *)node toSet:(id)set state:(id)state;
@end

@implementation ODXLayoutVariablePropertySet

+ (id)directionMap
{
  v2 = +[ODXLayoutVariablePropertySet directionMap]::directionMap;
  if (!+[ODXLayoutVariablePropertySet directionMap]::directionMap)
  {
    if ((atomic_load_explicit(&_MergedGlobals_56, memory_order_acquire) & 1) == 0)
    {
      +[ODXLayoutVariablePropertySet directionMap];
    }

    v3 = [[TCXmlEnumMap alloc] initWithDescriptions:&dword_27FC3F4F0];
    v4 = +[ODXLayoutVariablePropertySet directionMap]::directionMap;
    +[ODXLayoutVariablePropertySet directionMap]::directionMap = v3;

    v2 = +[ODXLayoutVariablePropertySet directionMap]::directionMap;
  }

  return v2;
}

+ (void)readNode:(_xmlNode *)node toSet:(id)set state:(id)state
{
  setCopy = set;
  stateCopy = state;
  oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
  v10 = OCXFindChild(node, oDXDiagramNamespace, "dir");

  if (v10)
  {
    directionMap = [self directionMap];
    [setCopy setDirection:{objc_msgSend(directionMap, "readFromNode:ns:name:def:", v10, 0, "val", 0)}];
  }
}

+ (void)directionMap
{
  if (__cxa_guard_acquire(&_MergedGlobals_56))
  {
    dword_27FC3F4F0 = 0;
    qword_27FC3F4F8 = "norm";
    dword_27FC3F500 = 1;
    qword_27FC3F508 = "rev";
    *algn_27FC3F510 = TCXmlEnumSentinel;

    __cxa_guard_release(&_MergedGlobals_56);
  }
}

@end