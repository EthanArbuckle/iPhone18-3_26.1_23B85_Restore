@interface HUSwitchControlPanelConfiguration
- (id)valueTransformerForControlItem:(id)item;
- (void)setupControlsForCell:(id)cell item:(id)item;
@end

@implementation HUSwitchControlPanelConfiguration

- (void)setupControlsForCell:(id)cell item:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v9 = objc_opt_class();
  v10 = cellCopy;
  v23 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v11 = v23;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v10 = v23;
  v13 = v23;
  if (!v12)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v15 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v9, objc_opt_class()}];

    v10 = v23;
LABEL_7:
    v13 = 0;
  }

  controlItems = [itemCopy controlItems];
  anyObject = [controlItems anyObject];

  if (([anyObject conformsToProtocol:&unk_2825BD600] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUControlPanelConfiguration.m" lineNumber:227 description:{@"Invalid parameter not satisfying: %@", @"[controlItem conformsToProtocol:@protocol(HFPrimaryStateWriter)]"}];
  }

  v18 = objc_alloc_init(HUSwitchControlView);
  v19 = [itemCopy identifierForControlItem:anyObject];
  [(HUSwitchControlView *)v18 setIdentifier:v19];

  [v13 setControlView:v18];
  latestResults = [itemCopy latestResults];
  v21 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v13 setControlTitle:v21];
}

- (id)valueTransformerForControlItem:(id)item
{
  if ([item conformsToProtocol:&unk_2825BD600])
  {
    v3 = [MEMORY[0x277D14CF0] transformerForValueClass:objc_opt_class() transformBlock:&__block_literal_global_149 reverseTransformBlock:&__block_literal_global_161_0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __68__HUSwitchControlPanelConfiguration_valueTransformerForControlItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 integerValue] == 2;

  return [v2 numberWithInt:v3];
}

uint64_t __68__HUSwitchControlPanelConfiguration_valueTransformerForControlItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  if ([a2 BOOLValue])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return [v2 numberWithInteger:v3];
}

@end