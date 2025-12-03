@interface UTType(DOCNode)
- (uint64_t)_doc_fileTypeCompare:()DOCNode;
- (uint64_t)doc_conformsToFolder;
@end

@implementation UTType(DOCNode)

- (uint64_t)_doc_fileTypeCompare:()DOCNode
{
  v4 = a3;
  doc_conformsToFolder = [self doc_conformsToFolder];
  doc_conformsToFolder2 = [v4 doc_conformsToFolder];
  if ((doc_conformsToFolder & 1) != 0 || doc_conformsToFolder2)
  {
    if ((doc_conformsToFolder ^ 1 | doc_conformsToFolder2))
    {
      v9 = (doc_conformsToFolder ^ 1) & doc_conformsToFolder2;
    }

    else
    {
      v9 = -1;
    }
  }

  else if (self == v4)
  {
    v9 = 0;
  }

  else
  {
    identifier = [self identifier];
    identifier2 = [v4 identifier];
    v9 = [identifier compare:identifier2];
  }

  return v9;
}

- (uint64_t)doc_conformsToFolder
{
  if (doc_conformsToFolder_onceToken != -1)
  {
    [UTType(DOCNode) doc_conformsToFolder];
  }

  v2 = doc_conformsToFolder__folderUTICache;
  identifier = [self identifier];
  v4 = [v2 objectForKey:identifier];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    if ([self conformsToType:*MEMORY[0x277CE1D80]])
    {
      bOOLValue = [self conformsToType:*MEMORY[0x277CE1E18]] ^ 1;
    }

    else
    {
      bOOLValue = 0;
    }

    v6 = doc_conformsToFolder__folderUTICache;
    v7 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    identifier2 = [self identifier];
    [v6 setObject:v7 forKey:identifier2];
  }

  return bOOLValue;
}

@end