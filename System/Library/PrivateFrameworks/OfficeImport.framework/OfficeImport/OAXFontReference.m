@interface OAXFontReference
+ (void)readFromNode:(_xmlNode *)a3 fontReference:(id)a4;
+ (void)writeReference:(id)a3 to:(id)a4 state:(id)a5;
@end

@implementation OAXFontReference

+ (void)readFromNode:(_xmlNode *)a3 fontReference:(id)a4
{
  v6 = a4;
  if (+[OAXFontReference readFromNode:fontReference:]::once != -1)
  {
    +[OAXFontReference readFromNode:fontReference:];
  }

  [v6 setIndex:{objc_msgSend(+[OAXFontReference readFromNode:fontReference:]::indexMap, "readFromNode:ns:name:", a3, 0, "idx")}];
  v5 = [OAXColor readColorFromParentXmlNode:a3];
  [v6 setColor:v5];
}

void __47__OAXFontReference_readFromNode_fontReference___block_invoke()
{
  if ((atomic_load_explicit(&_MergedGlobals_52, memory_order_acquire) & 1) == 0)
  {
    __47__OAXFontReference_readFromNode_fontReference___block_invoke_cold_1();
  }

  v0 = [[TCXmlEnumMap alloc] initWithDescriptions:&dword_27FC3EC30];
  v1 = +[OAXFontReference readFromNode:fontReference:]::indexMap;
  +[OAXFontReference readFromNode:fontReference:]::indexMap = v0;
}

+ (void)writeReference:(id)a3 to:(id)a4 state:(id)a5
{
  v10 = a3;
  v6 = a4;
  [v6 startElement:@"fontRef"];
  v7 = [v10 index] + 1;
  if (v7 < 3)
  {
    [v6 writeAttribute:@"idx" content:off_2799C7AC8[v7]];
  }

  v8 = [v10 color];

  if (v8)
  {
    v9 = [v10 color];
    [OAXColor writeColor:v9 to:v6];
  }

  [v6 endElement];
}

void __47__OAXFontReference_readFromNode_fontReference___block_invoke_cold_1()
{
  if (__cxa_guard_acquire(&_MergedGlobals_52))
  {
    qword_27FC3EC38 = "major";
    dword_27FC3EC40 = 1;
    dword_27FC3EC30 = 0;
    qword_27FC3EC48 = "minor";
    dword_27FC3EC50 = -1;
    qword_27FC3EC58 = "none";
    unk_27FC3EC60 = TCXmlEnumSentinel;

    __cxa_guard_release(&_MergedGlobals_52);
  }
}

@end