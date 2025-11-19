@interface OADTableStyleCollection
- (OADTableStyleCollection)init;
- (id)tableStyleWithId:(id)a3;
- (void)addTableStyle:(id)a3;
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

- (void)addTableStyle:(id)a3
{
  v6 = a3;
  [(NSMutableArray *)self->_styles addObject:?];
  styleMap = self->_styleMap;
  v5 = [v6 id];
  [(NSMutableDictionary *)styleMap setObject:v6 forKeyedSubscript:v5];
}

- (id)tableStyleWithId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_styleMap objectForKeyedSubscript:a3];

  return v3;
}

@end