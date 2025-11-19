@interface HUSplitRoomTransformedItem
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HUSplitRoomTransformedItem)initWithSourceItem:(id)a3 room:(id)a4;
- (NSString)description;
- (id)_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)a3;
- (id)updateWithOptions:(id)a3;
- (unint64_t)hash;
@end

@implementation HUSplitRoomTransformedItem

- (HUSplitRoomTransformedItem)initWithSourceItem:(id)a3 room:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUSplitRoomTransformedItem;
  v8 = [(HFTransformItem *)&v11 initWithSourceItem:a3 resultKeyExclusionFilter:MEMORY[0x277CBEBF8]];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_room, a4);
  }

  return v9;
}

- (id)updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(HUSplitRoomTransformedItem *)self room];
  v6 = [v5 uniqueIdentifier];

  v14.receiver = self;
  v14.super_class = HUSplitRoomTransformedItem;
  v7 = [(HUSplitRoomTransformedItem *)&v14 updateWithOptions:v4];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HUSplitRoomTransformedItem_updateWithOptions___block_invoke;
  v11[3] = &unk_277DBF558;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = [v7 flatMap:v11];

  return v9;
}

id __48__HUSplitRoomTransformedItem_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x277D14090]];
  v4 = [*(a1 + 40) sourceItem];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277D14058]];

  v7 = MEMORY[0x277D2C900];
  v8 = [v3 copy];
  v9 = [v7 futureWithResult:v8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_3_7 != -1)
  {
    dispatch_once(&_MergedGlobals_3_7, &__block_literal_global_66_2);
  }

  v3 = qword_27C837F98;

  return v3;
}

void __41__HUSplitRoomTransformedItem_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_73];
  v2 = [v0 appendCharacteristic:&__block_literal_global_75_1];
  v3 = [v0 build];

  v4 = qword_27C837F98;
  qword_27C837F98 = v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(HFTransformItem *)self sourceItem];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 copyWithZone:a3];
LABEL_5:
    v7 = v6;

    v5 = v7;
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 copy];
    goto LABEL_5;
  }

LABEL_6:
  v8 = objc_alloc(objc_opt_class());
  v9 = [(HUSplitRoomTransformedItem *)self room];
  v10 = [v8 initWithSourceItem:v5 room:v9];

  [v10 copyLatestResultsFromItem:self];
  return v10;
}

- (id)_descriptionBuilder
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HUSplitRoomTransformedItem *)self room];
  v5 = [v4 hf_prettyDescription];
  v6 = [v3 appendObject:v5 withName:@"room"];

  v7 = [(HFTransformItem *)self sourceItem];
  v8 = [v7 description];
  v9 = [v3 appendObject:v8 withName:@"sourceItem"];

  return v3;
}

- (NSString)description
{
  if ([MEMORY[0x277D14CE8] hasInternalDiagnostics])
  {
    v3 = [(HUSplitRoomTransformedItem *)self _descriptionBuilder];
    v4 = [v3 build];
  }

  else
  {
    v5 = objc_opt_class();
    v4 = NSStringFromClass(v5);
  }

  return v4;
}

@end