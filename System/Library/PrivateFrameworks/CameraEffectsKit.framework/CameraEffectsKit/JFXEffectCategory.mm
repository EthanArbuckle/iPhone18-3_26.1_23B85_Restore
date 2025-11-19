@interface JFXEffectCategory
- (JFXEffectCategory)initWithCategoryID:(id)a3 forEffectType:(int)a4 displayName:(id)a5 effectIDs:(id)a6 isNewCategory:(BOOL)a7 containsNewEffects:(BOOL)a8;
@end

@implementation JFXEffectCategory

- (JFXEffectCategory)initWithCategoryID:(id)a3 forEffectType:(int)a4 displayName:(id)a5 effectIDs:(id)a6 isNewCategory:(BOOL)a7 containsNewEffects:(BOOL)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v21.receiver = self;
  v21.super_class = JFXEffectCategory;
  v18 = [(JFXEffectCategory *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_categoryID, a3);
    v19->_effectType = a4;
    objc_storeStrong(&v19->_displayName, a5);
    objc_storeStrong(&v19->_effectIDs, a6);
    v19->_isNewCategory = a7;
    v19->_containsNewEffects = a8;
  }

  return v19;
}

@end