@interface ODXFillColorList
+ (id)colorApplicationMethodMap;
+ (id)hueDirectionMap;
+ (void)colorApplicationMethodMap;
+ (void)hueDirectionMap;
+ (void)readNode:(_xmlNode *)node list:(id)list;
@end

@implementation ODXFillColorList

+ (id)hueDirectionMap
{
  v2 = +[ODXFillColorList hueDirectionMap]::hueDirectionMap;
  if (!+[ODXFillColorList hueDirectionMap]::hueDirectionMap)
  {
    if ((atomic_load_explicit(&_MergedGlobals_54, memory_order_acquire) & 1) == 0)
    {
      +[ODXFillColorList hueDirectionMap];
    }

    v3 = [[TCXmlEnumMap alloc] initWithDescriptions:&dword_27FC3F2C0];
    v4 = +[ODXFillColorList hueDirectionMap]::hueDirectionMap;
    +[ODXFillColorList hueDirectionMap]::hueDirectionMap = v3;

    v2 = +[ODXFillColorList hueDirectionMap]::hueDirectionMap;
  }

  return v2;
}

+ (id)colorApplicationMethodMap
{
  v2 = +[ODXFillColorList colorApplicationMethodMap]::colorApplicationMethodMap;
  if (!+[ODXFillColorList colorApplicationMethodMap]::colorApplicationMethodMap)
  {
    if ((atomic_load_explicit(&qword_27FC3F2B8, memory_order_acquire) & 1) == 0)
    {
      +[ODXFillColorList colorApplicationMethodMap];
    }

    v3 = [[TCXmlEnumMap alloc] initWithDescriptions:&dword_27FC3F2F0];
    v4 = +[ODXFillColorList colorApplicationMethodMap]::colorApplicationMethodMap;
    +[ODXFillColorList colorApplicationMethodMap]::colorApplicationMethodMap = v3;

    v2 = +[ODXFillColorList colorApplicationMethodMap]::colorApplicationMethodMap;
  }

  return v2;
}

+ (void)readNode:(_xmlNode *)node list:(id)list
{
  listCopy = list;
  hueDirectionMap = [self hueDirectionMap];
  [listCopy setHueDirection:{objc_msgSend(hueDirectionMap, "readFromNode:ns:name:def:", node, 0, "hueDir", 1)}];

  colorApplicationMethodMap = [self colorApplicationMethodMap];
  [listCopy setMethod:{objc_msgSend(colorApplicationMethodMap, "readFromNode:ns:name:def:", node, 0, "meth", 2)}];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = OCXFirstChild(node);
  while (v9)
  {
    v10 = [OAXColor readColorFromNode:v9];
    if (!v10)
    {
      [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Could not read diagram color transform"];
    }

    [v8 addObject:v10];
    v9 = OCXNextSibling(v9);
  }

  [listCopy setColors:v8];
}

+ (void)hueDirectionMap
{
  if (__cxa_guard_acquire(&_MergedGlobals_54))
  {
    dword_27FC3F2C0 = 0;
    qword_27FC3F2C8 = "ccw";
    dword_27FC3F2D0 = 1;
    qword_27FC3F2D8 = "cw";
    xmmword_27FC3F2E0 = TCXmlEnumSentinel;

    __cxa_guard_release(&_MergedGlobals_54);
  }
}

+ (void)colorApplicationMethodMap
{
  if (__cxa_guard_acquire(&qword_27FC3F2B8))
  {
    qword_27FC3F2F8 = "cycle";
    dword_27FC3F300 = 1;
    dword_27FC3F2F0 = 0;
    qword_27FC3F308 = "repeat";
    dword_27FC3F310 = 2;
    qword_27FC3F318 = "span";
    unk_27FC3F320 = TCXmlEnumSentinel;

    __cxa_guard_release(&qword_27FC3F2B8);
  }
}

@end