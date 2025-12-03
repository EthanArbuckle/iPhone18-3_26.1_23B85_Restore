@interface _CNVirtualFile
- (_CNVirtualFile)init;
@end

@implementation _CNVirtualFile

- (_CNVirtualFile)init
{
  v9.receiver = self;
  v9.super_class = _CNVirtualFile;
  v2 = [(_CNVirtualFile *)&v9 init];
  if (v2)
  {
    data = [MEMORY[0x1E695DEF0] data];
    contents = v2->_contents;
    v2->_contents = data;

    v5 = objc_opt_new();
    extendedAttributes = v2->_extendedAttributes;
    v2->_extendedAttributes = v5;

    v7 = v2;
  }

  return v2;
}

@end