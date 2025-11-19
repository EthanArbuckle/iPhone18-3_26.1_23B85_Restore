@interface CNUIContactCardPropertyViewConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CNUIContactCardPropertyViewConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = -[CNUIContactCardPropertyViewConfiguration isMailVIP](self, "isMailVIP"), v5 != -[CNUIContactCardPropertyViewConfiguration isMailVIP](v4, "isMailVIP")) || (v6 = -[CNUIContactCardPropertyViewConfiguration shouldColorEmphasizeHighlightedProperties](self, "shouldColorEmphasizeHighlightedProperties"), v6 != -[CNUIContactCardPropertyViewConfiguration shouldColorEmphasizeHighlightedProperties](v4, "shouldColorEmphasizeHighlightedProperties")) || (v8 = -[CNUIContactCardPropertyViewConfiguration highlightedLabeledValueIdentifiers](self, "highlightedLabeledValueIdentifiers"), v9 = -[CNUIContactCardPropertyViewConfiguration highlightedLabeledValueIdentifiers](v4, "highlightedLabeledValueIdentifiers"), v8 | v9) && ![v8 isEqual:v9])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIsMailVIP:{-[CNUIContactCardPropertyViewConfiguration isMailVIP](self, "isMailVIP")}];
  [v4 setShouldColorEmphasizeHighlightedProperties:{-[CNUIContactCardPropertyViewConfiguration shouldColorEmphasizeHighlightedProperties](self, "shouldColorEmphasizeHighlightedProperties")}];
  v5 = [(CNUIContactCardPropertyViewConfiguration *)self highlightedLabeledValueIdentifiers];
  v6 = [v5 copy];
  [v4 setHighlightedLabeledValueIdentifiers:v6];

  return v4;
}

@end