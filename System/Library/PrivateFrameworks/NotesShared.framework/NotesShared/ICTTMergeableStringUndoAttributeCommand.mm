@interface ICTTMergeableStringUndoAttributeCommand
- (BOOL)addToGroup:(id)a3;
- (BOOL)hasTopoIDsThatCanChange;
- (ICTTMergeableStringUndoAttributeCommand)init;
- (NSString)description;
- (void)applyToString:(id)a3;
- (void)dealloc;
- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4;
@end

@implementation ICTTMergeableStringUndoAttributeCommand

- (ICTTMergeableStringUndoAttributeCommand)init
{
  v3.receiver = self;
  v3.super_class = ICTTMergeableStringUndoAttributeCommand;
  if ([(ICTTMergeableStringUndoAttributeCommand *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  attributeRanges = self->_attributeRanges;
  if (attributeRanges)
  {
    v5 = self->_attributeRanges;
    std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x216063B80](attributeRanges, 0x20C40960023A9);
  }

  v4.receiver = self;
  v4.super_class = ICTTMergeableStringUndoAttributeCommand;
  [(ICTTMergeableStringUndoAttributeCommand *)&v4 dealloc];
}

- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  attributeRanges = self->_attributeRanges;
  v8 = *attributeRanges;
  v9 = attributeRanges[1];
  if (*attributeRanges != v9)
  {
    v16 = self;
    do
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      updateTopoIDRange(v8, a3, a4, &v21);
      v10 = v21;
      v11 = v22;
      while (v10 != v11)
      {
        v12 = *v10;
        v13 = *(v10 + 8);
        v14 = *(v10 + 16);
        v15 = v12;
        v17 = v15;
        v18 = v13;
        v19 = v14;
        v20 = v8[1].var0.replicaID;
        std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::push_back[abi:ne200100](&v24, &v17);

        v10 += 24;
      }

      v17 = &v21;
      std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100](&v17);
      v8 = (v8 + 32);
    }

    while (v8 != v9);
    attributeRanges = v16->_attributeRanges;
  }

  if (attributeRanges != &v24)
  {
    std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__assign_with_size[abi:ne200100]<std::pair<TopoIDRange,NSDictionary * {__strong}>*,std::pair<TopoIDRange,NSDictionary * {__strong}>*>(attributeRanges, v24, v25, (v25 - v24) >> 5);
  }

  v17 = &v24;
  std::vector<std::pair<TopoIDRange,NSAttributedString * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v17);
}

- (BOOL)hasTopoIDsThatCanChange
{
  attributeRanges = self->_attributeRanges;
  v3 = attributeRanges[1];
  if (*attributeRanges == v3)
  {
    return 0;
  }

  v4 = *attributeRanges + 32;
  do
  {
    v5 = *(v4 - 32);
    v6 = [MEMORY[0x277CCAD78] CR_unserialized];

    result = v5 == v6;
    v8 = v5 == v6 || v4 == v3;
    v4 += 32;
  }

  while (!v8);
  return result;
}

- (void)applyToString:(id)a3
{
  v4 = a3;
  [v4 beginEditing];
  attributeRanges = self->_attributeRanges;
  v6 = *attributeRanges;
  v7 = attributeRanges[1];
  while (v6 != v7)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v8 = *v6;
    v12 = v8;
    v9 = *(v6 + 16);
    LODWORD(v13) = *(v6 + 8);
    LODWORD(v14) = v9;
    if (v4)
    {
      [v4 getSubstrings:&v15 forTopoIDRange:&v12];
    }

    else
    {
    }

    v10 = v15;
    v11 = v16;
    if (v15 != v16)
    {
      do
      {
        [v4 setAttributes:*(v6 + 24) substring:{*v10++, v12, v13, v14}];
      }

      while (v10 != v11);
      v10 = v15;
    }

    if (v10)
    {
      v16 = v10;
      operator delete(v10);
    }

    v6 += 32;
  }

  [v4 endEditing];
}

- (BOOL)addToGroup:(id)a3
{
  v4 = a3;
  v5 = [(ICTTMergeableStringUndoAttributeCommand *)self attributeRanges];
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v6;
      v12 = v9;
      v10 = *(v6 + 16);
      v13 = *(v6 + 8);
      v14 = v10;
      if (v4)
      {
        v8 |= [v4 addSeenRange:&v12];
      }

      else
      {
      }

      v6 += 32;
    }

    while (v6 != v7);
  }

  return v8 & 1;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<ICTTMergeableStringUndoAttributeCommand %p ", self];
  attributeRanges = self->_attributeRanges;
  v5 = *attributeRanges;
  v6 = attributeRanges[1];
  if (*attributeRanges != v6)
  {
    do
    {
      v7 = [*v5 TTShortDescription];
      [v3 appendFormat:@"%@:%d-%u => %@ ", v7, *(v5 + 8), (*(v5 + 8) + *(v5 + 16) - 1), *(v5 + 24)];

      v5 += 32;
    }

    while (v5 != v6);
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end