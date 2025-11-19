@interface CLSCurationDebugItem
+ (id)stringForDedupingType:(unint64_t)a3;
- (CLSCurationDebugItem)initWithItem:(id)a3;
- (id)dictionaryRepresentation;
- (void)dupeToDebugItem:(id)a3 withDedupingType:(unint64_t)a4;
@end

@implementation CLSCurationDebugItem

- (void)dupeToDebugItem:(id)a3 withDedupingType:(unint64_t)a4
{
  v7 = a3;
  if ([(CLSCurationDebugObject *)self state]== 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Item is already rejected, can't dupe it", v8, 2u);
    }
  }

  else
  {
    self->_dedupingType = a4;
    objc_storeStrong(&self->_dedupedDebugItem, a3);
  }
}

- (id)dictionaryRepresentation
{
  v15.receiver = self;
  v15.super_class = CLSCurationDebugItem;
  v3 = [(CLSCurationDebugObject *)&v15 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  if (([(CLSCurationItem *)self->_item clsIsInterestingSDOF]& 1) != 0 || [(CLSCurationItem *)self->_item clsIsInterestingHDR])
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isSDOFOrHDR"];
  }

  if ([(CLSCurationItem *)self->_item isFavorite])
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isFavorite"];
  }

  if ([(CLSCurationItem *)self->_item clsIsUtility])
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isUtility"];
  }

  if ([(CLSCurationItem *)self->_item clsIsBlurry])
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isBlurry"];
  }

  v5 = MEMORY[0x277CCABB0];
  [(CLSCurationItem *)self->_item clsAestheticScore];
  v6 = [v5 numberWithDouble:?];
  [v4 setObject:v6 forKeyedSubscript:@"aestheticScore"];

  v7 = MEMORY[0x277CCABB0];
  [(CLSCurationItem *)self->_item clsContentScore];
  v8 = [v7 numberWithDouble:?];
  [v4 setObject:v8 forKeyedSubscript:@"contentScore"];

  v9 = MEMORY[0x277CCABB0];
  [(CLSCurationItem *)self->_item clsIconicScore];
  v10 = [v9 numberWithDouble:?];
  [v4 setObject:v10 forKeyedSubscript:@"iconicScore"];

  if (self->_dedupingType)
  {
    v11 = [objc_opt_class() stringForDedupingType:self->_dedupingType];
    [v4 setObject:v11 forKeyedSubscript:@"dedupingType"];

    v12 = [(CLSCurationDebugItem *)self->_dedupedDebugItem item];
    v13 = [v12 clsIdentifier];
    [v4 setObject:v13 forKeyedSubscript:@"dedupedItemIdentifier"];
  }

  return v4;
}

- (CLSCurationDebugItem)initWithItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CLSCurationDebugItem;
  v6 = [(CLSCurationDebugObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

+ (id)stringForDedupingType:(unint64_t)a3
{
  if (a3 > 5)
  {
    return @"Invalid Type";
  }

  else
  {
    return off_2788A87F8[a3];
  }
}

@end