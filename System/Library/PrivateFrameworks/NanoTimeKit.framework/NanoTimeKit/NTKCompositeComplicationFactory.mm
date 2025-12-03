@interface NTKCompositeComplicationFactory
- (NSMutableDictionary)factoriesBySlot;
- (id)factoryAtSlot:(id)slot;
- (id)keylineViewForComplicationSlot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (int64_t)complicationPickerStyleForSlot:(id)slot;
- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot;
- (unint64_t)layoutStyleForSlot:(id)slot;
- (void)configureComplicationView:(id)view forSlot:(id)slot;
- (void)curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot;
- (void)deregisterFactoryAtSlot:(id)slot;
- (void)deregisterFactoryAtSlots:(id)slots;
- (void)loadLayoutRules;
- (void)registerFactory:(id)factory forSlot:(id)slot;
- (void)registerFactory:(id)factory forSlots:(id)slots;
@end

@implementation NTKCompositeComplicationFactory

- (NSMutableDictionary)factoriesBySlot
{
  factoriesBySlot = self->_factoriesBySlot;
  if (!factoriesBySlot)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_factoriesBySlot;
    self->_factoriesBySlot = dictionary;

    v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
    factories = self->_factories;
    self->_factories = v6;

    factoriesBySlot = self->_factoriesBySlot;
  }

  return factoriesBySlot;
}

- (void)registerFactory:(id)factory forSlot:(id)slot
{
  if (factory && slot)
  {
    slotCopy = slot;
    factoryCopy = factory;
    factoriesBySlot = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
    [factoriesBySlot setObject:factoryCopy forKeyedSubscript:slotCopy];

    factories = [(NTKCompositeComplicationFactory *)self factories];
    [factories addObject:factoryCopy];
  }
}

- (void)registerFactory:(id)factory forSlots:(id)slots
{
  factoryCopy = factory;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__NTKCompositeComplicationFactory_registerFactory_forSlots___block_invoke;
  v8[3] = &unk_27877DEA8;
  v8[4] = self;
  v9 = factoryCopy;
  v7 = factoryCopy;
  [slots enumerateObjectsUsingBlock:v8];
}

- (void)deregisterFactoryAtSlot:(id)slot
{
  if (slot)
  {
    slotCopy = slot;
    factoriesBySlot = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
    v8 = [factoriesBySlot objectForKeyedSubscript:slotCopy];

    factoriesBySlot2 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
    [factoriesBySlot2 removeObjectForKey:slotCopy];

    if (v8)
    {
      factories = [(NTKCompositeComplicationFactory *)self factories];
      [factories removeObject:v8];
    }
  }
}

- (void)deregisterFactoryAtSlots:(id)slots
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__NTKCompositeComplicationFactory_deregisterFactoryAtSlots___block_invoke;
  v3[3] = &unk_27877DED0;
  v3[4] = self;
  [slots enumerateObjectsUsingBlock:v3];
}

- (id)factoryAtSlot:(id)slot
{
  slotCopy = slot;
  factoriesBySlot = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v6 = [factoriesBySlot objectForKeyedSubscript:slotCopy];

  return v6;
}

- (int64_t)complicationPickerStyleForSlot:(id)slot
{
  slotCopy = slot;
  factoriesBySlot = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v6 = [factoriesBySlot objectForKeyedSubscript:slotCopy];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 complicationPickerStyleForSlot:slotCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot
{
  slotCopy = slot;
  viewCopy = view;
  factoriesBySlot = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v8 = [factoriesBySlot objectForKeyedSubscript:slotCopy];
  [v8 configureComplicationView:viewCopy forSlot:slotCopy];
}

- (void)curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot
{
  slotCopy = slot;
  factoriesBySlot = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v15 = [factoriesBySlot objectForKeyedSubscript:slotCopy];

  if (objc_opt_respondsToSelector())
  {
    factoriesBySlot2 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
    v17 = [factoriesBySlot2 objectForKeyedSubscript:slotCopy];
    [v17 curvedComplicationCircleRadius:radius centerAngle:angle maxAngularWidth:width circleCenter:center interior:interior forSlot:slotCopy];
  }
}

- (id)keylineViewForComplicationSlot:(id)slot
{
  slotCopy = slot;
  factoriesBySlot = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v6 = [factoriesBySlot objectForKeyedSubscript:slotCopy];
  v7 = [v6 keylineViewForComplicationSlot:slotCopy];

  return v7;
}

- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot
{
  slotCopy = slot;
  factoriesBySlot = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v8 = [factoriesBySlot objectForKeyedSubscript:slotCopy];

  if (objc_opt_respondsToSelector())
  {
    factoriesBySlot2 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
    v10 = [factoriesBySlot2 objectForKeyedSubscript:slotCopy];
    v11 = [v10 legacyLayoutOverrideforComplicationType:type slot:slotCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)loadLayoutRules
{
  factories = [(NTKCompositeComplicationFactory *)self factories];
  [factories enumerateObjectsUsingBlock:&__block_literal_global_4];
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  slotCopy = slot;
  complicationCopy = complication;
  factoriesBySlot = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v11 = [factoriesBySlot objectForKeyedSubscript:slotCopy];
  v12 = [v11 newLegacyViewForComplication:complicationCopy family:family slot:slotCopy];

  return v12;
}

- (unint64_t)layoutStyleForSlot:(id)slot
{
  slotCopy = slot;
  factoriesBySlot = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v6 = [factoriesBySlot objectForKeyedSubscript:slotCopy];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 layoutStyleForSlot:slotCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end