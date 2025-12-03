@interface ODXIteratorSpecification
+ (id)axisTypeMap;
+ (id)elementTypeMap;
+ (void)axisTypeMap;
+ (void)elementTypeMap;
+ (void)readFromNode:(_xmlNode *)node toSpecification:(id)specification state:(id)state;
@end

@implementation ODXIteratorSpecification

+ (id)axisTypeMap
{
  v2 = +[ODXIteratorSpecification axisTypeMap]::axisTypeMap;
  if (!+[ODXIteratorSpecification axisTypeMap]::axisTypeMap)
  {
    if ((atomic_load_explicit(&_MergedGlobals_55, memory_order_acquire) & 1) == 0)
    {
      +[ODXIteratorSpecification axisTypeMap];
    }

    v3 = [[TCXmlEnumMap alloc] initWithDescriptions:&dword_27FC3F400];
    v4 = +[ODXIteratorSpecification axisTypeMap]::axisTypeMap;
    +[ODXIteratorSpecification axisTypeMap]::axisTypeMap = v3;

    v2 = +[ODXIteratorSpecification axisTypeMap]::axisTypeMap;
  }

  return v2;
}

+ (id)elementTypeMap
{
  v2 = +[ODXIteratorSpecification elementTypeMap]::elementTypeMap;
  if (!+[ODXIteratorSpecification elementTypeMap]::elementTypeMap)
  {
    if ((atomic_load_explicit(&qword_27FC3F348, memory_order_acquire) & 1) == 0)
    {
      +[ODXIteratorSpecification elementTypeMap];
    }

    v3 = [[TCXmlEnumMap alloc] initWithDescriptions:&dword_27FC3F350];
    v4 = +[ODXIteratorSpecification elementTypeMap]::elementTypeMap;
    +[ODXIteratorSpecification elementTypeMap]::elementTypeMap = v3;

    v2 = +[ODXIteratorSpecification elementTypeMap]::elementTypeMap;
  }

  return v2;
}

+ (void)readFromNode:(_xmlNode *)node toSpecification:(id)specification state:(id)state
{
  specificationCopy = specification;
  stateCopy = state;
  axisTypeMap = [self axisTypeMap];
  v10 = [axisTypeMap readFromNode:node ns:0 name:"axis" def:12];

  if (v10 != 12)
  {
    v11 = objc_alloc_init(ODDIteratorAttributes);
    [specificationCopy addAttributes:v11];
    [(ODDIteratorAttributes *)v11 setAxis:v10];
    elementTypeMap = [self elementTypeMap];
    -[ODDIteratorAttributes setPointType:](v11, "setPointType:", [elementTypeMap readFromNode:node ns:0 name:"ptType" def:0]);

    [(ODDIteratorAttributes *)v11 setHideLastTransition:OCXReadBool(node, 0, "hideLastTrans", 1)];
    oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
    [(ODDIteratorAttributes *)v11 setStart:CXDefaultLongAttribute(node, oDXDiagramNamespace, "st", 1)];

    oDXDiagramNamespace2 = [stateCopy ODXDiagramNamespace];
    [(ODDIteratorAttributes *)v11 setCount:CXDefaultUnsignedLongAttribute(node, oDXDiagramNamespace2, "cnt", 0)];

    oDXDiagramNamespace3 = [stateCopy ODXDiagramNamespace];
    [(ODDIteratorAttributes *)v11 setStep:CXDefaultLongAttribute(node, oDXDiagramNamespace3, "step", 1)];
  }
}

+ (void)axisTypeMap
{
  if (__cxa_guard_acquire(&_MergedGlobals_55))
  {
    qword_27FC3F408 = "self";
    dword_27FC3F410 = 1;
    qword_27FC3F418 = "ch";
    dword_27FC3F420 = 2;
    qword_27FC3F428 = "des";
    dword_27FC3F430 = 3;
    qword_27FC3F438 = "desOrSelf";
    dword_27FC3F440 = 4;
    qword_27FC3F448 = "par";
    dword_27FC3F450 = 5;
    qword_27FC3F458 = "ancst";
    dword_27FC3F460 = 6;
    qword_27FC3F468 = "ancstOrSelf";
    dword_27FC3F470 = 7;
    qword_27FC3F478 = "followSib";
    dword_27FC3F480 = 8;
    qword_27FC3F488 = "precedSib";
    dword_27FC3F490 = 9;
    qword_27FC3F498 = "follow";
    dword_27FC3F4A0 = 10;
    qword_27FC3F4A8 = "preced";
    dword_27FC3F4B0 = 11;
    dword_27FC3F400 = 0;
    qword_27FC3F4B8 = "root";
    dword_27FC3F4C0 = 12;
    qword_27FC3F4C8 = "none";
    xmmword_27FC3F4D0 = TCXmlEnumSentinel;

    __cxa_guard_release(&_MergedGlobals_55);
  }
}

+ (void)elementTypeMap
{
  if (__cxa_guard_acquire(&qword_27FC3F348))
  {
    qword_27FC3F358 = "all";
    dword_27FC3F360 = 1;
    qword_27FC3F368 = "doc";
    dword_27FC3F370 = 2;
    qword_27FC3F378 = "node";
    dword_27FC3F380 = 3;
    qword_27FC3F388 = "norm";
    dword_27FC3F390 = 4;
    qword_27FC3F398 = "nonNorm";
    dword_27FC3F3A0 = 5;
    qword_27FC3F3A8 = "asst";
    dword_27FC3F3B0 = 6;
    qword_27FC3F3B8 = "nonAsst";
    dword_27FC3F3C0 = 7;
    qword_27FC3F3C8 = "parTrans";
    dword_27FC3F3D0 = 8;
    dword_27FC3F350 = 0;
    qword_27FC3F3D8 = "pres";
    dword_27FC3F3E0 = 9;
    qword_27FC3F3E8 = "sibTrans";
    *algn_27FC3F3F0 = TCXmlEnumSentinel;

    __cxa_guard_release(&qword_27FC3F348);
  }
}

@end