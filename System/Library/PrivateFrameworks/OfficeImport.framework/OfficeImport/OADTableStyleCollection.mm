@interface OADTableStyleCollection
- (OADTableStyleCollection)init;
- (id)tableStyleWithId:(id)id;
- (void)addTableStyle:(id)style;
@end

@implementation OADTableStyleCollection

- (OADTableStyleCollection)init
{
  v8.receiver = self;
  v8.super_class = OADTableStyleCollection;
  v2 = [(OADTableStyleCollection *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    styles = v2->_styles;
    v2->_styles = v3;

    v5 = objc_opt_new();
    styleMap = v2->_styleMap;
    v2->_styleMap = v5;
  }

  return v2;
}

- (void)addTableStyle:(id)style
{
  styleCopy = style;
  [(NSMutableArray *)self->_styles addObject:?];
  styleMap = self->_styleMap;
  v5 = [styleCopy id];
  [(NSMutableDictionary *)styleMap setObject:styleCopy forKeyedSubscript:v5];
}

- (id)tableStyleWithId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_styleMap objectForKeyedSubscript:id];

  return v3;
}

@end