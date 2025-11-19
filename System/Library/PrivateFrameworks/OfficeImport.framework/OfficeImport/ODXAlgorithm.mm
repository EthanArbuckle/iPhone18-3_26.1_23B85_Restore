@interface ODXAlgorithm
+ (id)typeMap;
+ (void)readNode:(_xmlNode *)a3 toAlgorithm:(id)a4;
+ (void)typeMap;
@end

@implementation ODXAlgorithm

+ (id)typeMap
{
  v2 = +[ODXAlgorithm typeMap]::typeMap;
  if (!+[ODXAlgorithm typeMap]::typeMap)
  {
    if ((atomic_load_explicit(&_MergedGlobals_53, memory_order_acquire) & 1) == 0)
    {
      +[ODXAlgorithm typeMap];
    }

    v3 = [[TCXmlEnumMap alloc] initWithDescriptions:&dword_27FC3F1E0];
    v4 = +[ODXAlgorithm typeMap]::typeMap;
    +[ODXAlgorithm typeMap]::typeMap = v3;

    v2 = +[ODXAlgorithm typeMap]::typeMap;
  }

  return v2;
}

+ (void)readNode:(_xmlNode *)a3 toAlgorithm:(id)a4
{
  v7 = a4;
  v6 = [a1 typeMap];
  [v7 setType:{objc_msgSend(v6, "readFromNode:ns:name:", a3, 0, "type")}];
}

+ (void)typeMap
{
  if (__cxa_guard_acquire(&_MergedGlobals_53))
  {
    qword_27FC3F1E8 = "unknown";
    dword_27FC3F1F0 = 1;
    qword_27FC3F1F8 = "composite";
    dword_27FC3F200 = 2;
    qword_27FC3F208 = "conn";
    dword_27FC3F210 = 3;
    qword_27FC3F218 = "cycle";
    dword_27FC3F220 = 4;
    qword_27FC3F228 = "hierChild";
    dword_27FC3F230 = 5;
    qword_27FC3F238 = "hierRoot";
    dword_27FC3F240 = 6;
    qword_27FC3F248 = "pyra";
    dword_27FC3F250 = 7;
    qword_27FC3F258 = "lin";
    dword_27FC3F260 = 8;
    qword_27FC3F268 = "sp";
    dword_27FC3F270 = 9;
    dword_27FC3F1E0 = 0;
    qword_27FC3F278 = "tx";
    dword_27FC3F280 = 10;
    qword_27FC3F288 = "snake";
    *algn_27FC3F290 = TCXmlEnumSentinel;

    __cxa_guard_release(&_MergedGlobals_53);
  }
}

@end