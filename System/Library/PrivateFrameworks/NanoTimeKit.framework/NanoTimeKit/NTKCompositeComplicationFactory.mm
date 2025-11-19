@interface NTKCompositeComplicationFactory
- (NSMutableDictionary)factoriesBySlot;
- (id)factoryAtSlot:(id)a3;
- (id)keylineViewForComplicationSlot:(id)a3;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (int64_t)complicationPickerStyleForSlot:(id)a3;
- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4;
- (unint64_t)layoutStyleForSlot:(id)a3;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8;
- (void)deregisterFactoryAtSlot:(id)a3;
- (void)deregisterFactoryAtSlots:(id)a3;
- (void)loadLayoutRules;
- (void)registerFactory:(id)a3 forSlot:(id)a4;
- (void)registerFactory:(id)a3 forSlots:(id)a4;
@end

@implementation NTKCompositeComplicationFactory

- (NSMutableDictionary)factoriesBySlot
{
  factoriesBySlot = self->_factoriesBySlot;
  if (!factoriesBySlot)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_factoriesBySlot;
    self->_factoriesBySlot = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
    factories = self->_factories;
    self->_factories = v6;

    factoriesBySlot = self->_factoriesBySlot;
  }

  return factoriesBySlot;
}

- (void)registerFactory:(id)a3 forSlot:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
    [v8 setObject:v7 forKeyedSubscript:v6];

    v9 = [(NTKCompositeComplicationFactory *)self factories];
    [v9 addObject:v7];
  }
}

- (void)registerFactory:(id)a3 forSlots:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__NTKCompositeComplicationFactory_registerFactory_forSlots___block_invoke;
  v8[3] = &unk_27877DEA8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a4 enumerateObjectsUsingBlock:v8];
}

- (void)deregisterFactoryAtSlot:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
    v8 = [v5 objectForKeyedSubscript:v4];

    v6 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
    [v6 removeObjectForKey:v4];

    if (v8)
    {
      v7 = [(NTKCompositeComplicationFactory *)self factories];
      [v7 removeObject:v8];
    }
  }
}

- (void)deregisterFactoryAtSlots:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__NTKCompositeComplicationFactory_deregisterFactoryAtSlots___block_invoke;
  v3[3] = &unk_27877DED0;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

- (id)factoryAtSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (int64_t)complicationPickerStyleForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 complicationPickerStyleForSlot:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v8 = [v9 objectForKeyedSubscript:v6];
  [v8 configureComplicationView:v7 forSlot:v6];
}

- (void)curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8
{
  v18 = a8;
  v14 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v15 = [v14 objectForKeyedSubscript:v18];

  if (objc_opt_respondsToSelector())
  {
    v16 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
    v17 = [v16 objectForKeyedSubscript:v18];
    [v17 curvedComplicationCircleRadius:a3 centerAngle:a4 maxAngularWidth:a5 circleCenter:a6 interior:a7 forSlot:v18];
  }
}

- (id)keylineViewForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 keylineViewForComplicationSlot:v4];

  return v7;
}

- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (objc_opt_respondsToSelector())
  {
    v9 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
    v10 = [v9 objectForKeyedSubscript:v6];
    v11 = [v10 legacyLayoutOverrideforComplicationType:a3 slot:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)loadLayoutRules
{
  v2 = [(NTKCompositeComplicationFactory *)self factories];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_4];
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v11 = [v10 objectForKeyedSubscript:v8];
  v12 = [v11 newLegacyViewForComplication:v9 family:a4 slot:v8];

  return v12;
}

- (unint64_t)layoutStyleForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKCompositeComplicationFactory *)self factoriesBySlot];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 layoutStyleForSlot:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end