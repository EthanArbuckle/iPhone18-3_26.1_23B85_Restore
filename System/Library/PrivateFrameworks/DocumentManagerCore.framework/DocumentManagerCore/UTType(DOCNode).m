@interface UTType(DOCNode)
- (uint64_t)_doc_fileTypeCompare:()DOCNode;
- (uint64_t)doc_conformsToFolder;
@end

@implementation UTType(DOCNode)

- (uint64_t)_doc_fileTypeCompare:()DOCNode
{
  v4 = a3;
  v5 = [a1 doc_conformsToFolder];
  v6 = [v4 doc_conformsToFolder];
  if ((v5 & 1) != 0 || v6)
  {
    if ((v5 ^ 1 | v6))
    {
      v9 = (v5 ^ 1) & v6;
    }

    else
    {
      v9 = -1;
    }
  }

  else if (a1 == v4)
  {
    v9 = 0;
  }

  else
  {
    v7 = [a1 identifier];
    v8 = [v4 identifier];
    v9 = [v7 compare:v8];
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
  v3 = [a1 identifier];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    if ([a1 conformsToType:*MEMORY[0x277CE1D80]])
    {
      v5 = [a1 conformsToType:*MEMORY[0x277CE1E18]] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = doc_conformsToFolder__folderUTICache;
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v8 = [a1 identifier];
    [v6 setObject:v7 forKey:v8];
  }

  return v5;
}

@end