@interface _SchemaRenditionTuple
- (_SchemaRenditionTuple)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation _SchemaRenditionTuple

- (_SchemaRenditionTuple)init
{
  v3.receiver = self;
  v3.super_class = _SchemaRenditionTuple;
  result = [(_SchemaRenditionTuple *)&v3 init];
  result->info = 0;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  CUIRenditionKeyCopy(v5 + 1, self->key, 0x16u);
  v5[12] = [(NSMutableDictionary *)self->info mutableCopyWithZone:a3];
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _SchemaRenditionTuple;
  [(_SchemaRenditionTuple *)&v3 dealloc];
}

- (id)description
{
  v3 = [[CUIRenditionKey alloc] initWithKeyList:self->key];
  v4 = [NSString stringWithFormat:@"\n\telement: %ld, \tpart: %ld, \tsize: %ld, \tdirection: %ld, \tvalue: %ld, \tdimension1: %ld, \tdimension2: %ld, \tstate: %ld, \tlayer: %ld, \tscale:%ld, \tidentifier:%ld", [(CUIRenditionKey *)v3 themeElement], [(CUIRenditionKey *)v3 themePart], [(CUIRenditionKey *)v3 themeSize], [(CUIRenditionKey *)v3 themeDirection], [(CUIRenditionKey *)v3 themeValue], [(CUIRenditionKey *)v3 themeDimension1], [(CUIRenditionKey *)v3 themeDimension2], [(CUIRenditionKey *)v3 themeState], [(CUIRenditionKey *)v3 themeLayer], [(CUIRenditionKey *)v3 themeScale], [(CUIRenditionKey *)v3 themeIdentifier]];

  v5 = [(NSMutableDictionary *)self->info description];
  v7.receiver = self;
  v7.super_class = _SchemaRenditionTuple;
  return [-[_SchemaRenditionTuple description](&v7 description)];
}

@end