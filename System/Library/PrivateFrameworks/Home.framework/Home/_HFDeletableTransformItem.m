@interface _HFDeletableTransformItem
- (BOOL)hf_canDeleteItem;
- (id)hf_deleteItem;
@end

@implementation _HFDeletableTransformItem

- (BOOL)hf_canDeleteItem
{
  v2 = [(HFTransformItem *)self sourceItem];
  if ([v2 conformsToProtocol:&unk_282552AC8])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 hf_canDeleteItem];
  return v5;
}

- (id)hf_deleteItem
{
  v2 = [(HFTransformItem *)self sourceItem];
  v3 = &unk_282552AC8;
  v4 = v2;
  v5 = v4;
  if (v4)
  {
    if ([v4 conformsToProtocol:v3])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v5;
    if (v6)
    {
      goto LABEL_8;
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v10 = NSStringFromProtocol(v3);
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v10}];
  }

  v7 = 0;
LABEL_8:

  v11 = [v7 hf_deleteItem];

  return v11;
}

@end