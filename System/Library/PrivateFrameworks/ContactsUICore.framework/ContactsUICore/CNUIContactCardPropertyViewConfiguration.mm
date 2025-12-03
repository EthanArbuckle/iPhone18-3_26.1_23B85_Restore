@interface CNUIContactCardPropertyViewConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CNUIContactCardPropertyViewConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 1;
  if (self != equalCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = -[CNUIContactCardPropertyViewConfiguration isMailVIP](self, "isMailVIP"), v5 != -[CNUIContactCardPropertyViewConfiguration isMailVIP](equalCopy, "isMailVIP")) || (v6 = -[CNUIContactCardPropertyViewConfiguration shouldColorEmphasizeHighlightedProperties](self, "shouldColorEmphasizeHighlightedProperties"), v6 != -[CNUIContactCardPropertyViewConfiguration shouldColorEmphasizeHighlightedProperties](equalCopy, "shouldColorEmphasizeHighlightedProperties")) || (v8 = -[CNUIContactCardPropertyViewConfiguration highlightedLabeledValueIdentifiers](self, "highlightedLabeledValueIdentifiers"), v9 = -[CNUIContactCardPropertyViewConfiguration highlightedLabeledValueIdentifiers](equalCopy, "highlightedLabeledValueIdentifiers"), v8 | v9) && ![v8 isEqual:v9])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIsMailVIP:{-[CNUIContactCardPropertyViewConfiguration isMailVIP](self, "isMailVIP")}];
  [v4 setShouldColorEmphasizeHighlightedProperties:{-[CNUIContactCardPropertyViewConfiguration shouldColorEmphasizeHighlightedProperties](self, "shouldColorEmphasizeHighlightedProperties")}];
  highlightedLabeledValueIdentifiers = [(CNUIContactCardPropertyViewConfiguration *)self highlightedLabeledValueIdentifiers];
  v6 = [highlightedLabeledValueIdentifiers copy];
  [v4 setHighlightedLabeledValueIdentifiers:v6];

  return v4;
}

@end