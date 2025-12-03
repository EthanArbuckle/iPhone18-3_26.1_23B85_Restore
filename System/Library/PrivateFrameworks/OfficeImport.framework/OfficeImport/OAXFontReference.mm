@interface OAXFontReference
+ (void)readFromNode:(_xmlNode *)node fontReference:(id)reference;
+ (void)writeReference:(id)reference to:(id)to state:(id)state;
@end

@implementation OAXFontReference

+ (void)readFromNode:(_xmlNode *)node fontReference:(id)reference
{
  referenceCopy = reference;
  if (+[OAXFontReference readFromNode:fontReference:]::once != -1)
  {
    +[OAXFontReference readFromNode:fontReference:];
  }

  [referenceCopy setIndex:{objc_msgSend(+[OAXFontReference readFromNode:fontReference:]::indexMap, "readFromNode:ns:name:", node, 0, "idx")}];
  v5 = [OAXColor readColorFromParentXmlNode:node];
  [referenceCopy setColor:v5];
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

+ (void)writeReference:(id)reference to:(id)to state:(id)state
{
  referenceCopy = reference;
  toCopy = to;
  [toCopy startElement:@"fontRef"];
  v7 = [referenceCopy index] + 1;
  if (v7 < 3)
  {
    [toCopy writeAttribute:@"idx" content:off_2799C7AC8[v7]];
  }

  color = [referenceCopy color];

  if (color)
  {
    color2 = [referenceCopy color];
    [OAXColor writeColor:color2 to:toCopy];
  }

  [toCopy endElement];
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