@interface FICopyOperation
- (FICopyOperation)initWithSourceItems:(id)a3 destinationItem:(id)a4;
- (FICopyOperation)initWithSourceNodes:(id)a3 destinationFolder:(id)a4;
- (id)createFPOperation;
- (id)initWithSourceItems:destinationItem:;
- (id)makeProgress;
- (uint64_t)initWithSourceItems:destinationItem:;
- (void)initWithSourceItems:destinationItem:;
@end

@implementation FICopyOperation

- (FICopyOperation)initWithSourceNodes:(id)a3 destinationFolder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FICopyOperation;
  v8 = [(FIOperation *)&v11 init];
  [(FIOperation *)v8 setOperationType:2];
  [(FIOperation *)v8 setSourceNodes:v6];
  v9 = [v7 fileOpNode];
  [(FIOperation *)v8 setDestinationNode:v9];

  return v8;
}

- (FICopyOperation)initWithSourceItems:(id)a3 destinationItem:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FICopyOperation;
  v8 = [(FIOperation *)&v11 init];
  MutableCopy<NSDictionary<NSString *,objc_object *>>(v6);
  [objc_claimAutoreleasedReturnValue() addObject:v7];
  [(FIOperation *)v8 setOperationType:2];
  make_nsweak<FIRenameOperation>(v8, v10);
  v10[1] = v6;
  v10[2] = v7;
  v12 = 0;
  operator new();
}

- (id)createFPOperation
{
  [(FIOperation *)self setExecutedAsFPAction:1];
  v3 = objc_alloc(MEMORY[0x1E69672E0]);
  v4 = [(FIOperation *)self sourceFPItems];
  v5 = [(FIOperation *)self destinationFPItem];
  v6 = [v3 initWithItems:v4 destinationFolder:v5];

  return v6;
}

- (id)makeProgress
{
  v7.receiver = self;
  v7.super_class = FICopyOperation;
  v3 = [(FIOperation *)&v7 makeProgress];
  [v3 setKind:*MEMORY[0x1E696A888]];
  [v3 setFileOperationKind:*MEMORY[0x1E696A840]];
  v4 = [(FIOperation *)self destinationNode];
  v5 = [v4 fileURL];
  [v3 setFileURL:v5];

  return v3;
}

- (void)initWithSourceItems:destinationItem:
{
  v4 = TNSWeakPtr<FICopyOperation>::Lock((a1 + 8));
  if (v4)
  {
    v5 = a2[1];
    if (*(v5 - 8) == 1)
    {
      v6 = *(v5 - 16);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 16), "count")}];
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 16), "count")}];
    v27[0] = a2;
    v27[1] = (a1 + 16);
    iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<std::vector<std::optional<FINode * {__strong}>> const&,NSArray<FPItem *> * const {__strong}&>,0ul,1ul>::begin(v27, &v20);
    iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<std::vector<std::optional<FINode * {__strong}>> const&,NSArray<FPItem *> * const {__strong}&>,0ul,1ul>::end(v27, &v17);
    for (i = v20; v20 != v17; ++v26)
    {
      if (obj == v18 && v26 == v19)
      {
        break;
      }

      v11 = *(v22[1] + 8 * v25);
      if (*(i + 8) == 1 && (v12 = *i) != 0)
      {
        v13 = v12;
        [v8 addObject:v12];
      }

      else
      {
        v13 = 0;
        [v9 addObject:v11];
      }

      v20 += 16;
      v14 = v25;
      if (v25 >= v24 - 1)
      {
        v15 = [obj countByEnumeratingWithState:v22 objects:v23 count:4];
        v14 = -1;
        v24 = v15;
        v25 = -1;
      }

      if (v23[4] != *v22[2])
      {
        objc_enumerationMutation(obj);
        v14 = v25;
      }

      i = v20;
      v25 = v14 + 1;
    }

    if ([v8 count])
    {
      [v4 setSourceNodes:v8];
      v16 = [v7 fileOpNode];
      [v4 setDestinationNode:v16];
    }

    if ([v9 count])
    {
      [v4 setSourceFPItems:v9];
      [v4 setDestinationFPItem:*(a1 + 24)];
    }
  }
}

- (id)initWithSourceItems:destinationItem:
{
  *a2 = &unk_1F5F41B10;
  objc_copyWeak((a2 + 8), a1 + 1);
  *(a2 + 16) = a1[2];
  result = a1[3];
  *(a2 + 24) = result;
  return result;
}

- (uint64_t)initWithSourceItems:destinationItem:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end