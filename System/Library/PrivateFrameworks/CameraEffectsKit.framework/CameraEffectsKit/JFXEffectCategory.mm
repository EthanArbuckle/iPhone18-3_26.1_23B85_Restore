@interface JFXEffectCategory
- (JFXEffectCategory)initWithCategoryID:(id)d forEffectType:(int)type displayName:(id)name effectIDs:(id)ds isNewCategory:(BOOL)category containsNewEffects:(BOOL)effects;
@end

@implementation JFXEffectCategory

- (JFXEffectCategory)initWithCategoryID:(id)d forEffectType:(int)type displayName:(id)name effectIDs:(id)ds isNewCategory:(BOOL)category containsNewEffects:(BOOL)effects
{
  dCopy = d;
  nameCopy = name;
  dsCopy = ds;
  v21.receiver = self;
  v21.super_class = JFXEffectCategory;
  v18 = [(JFXEffectCategory *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_categoryID, d);
    v19->_effectType = type;
    objc_storeStrong(&v19->_displayName, name);
    objc_storeStrong(&v19->_effectIDs, ds);
    v19->_isNewCategory = category;
    v19->_containsNewEffects = effects;
  }

  return v19;
}

@end