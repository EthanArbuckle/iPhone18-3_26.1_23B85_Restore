@interface ATXWidgetStack
- (ATXWidgetStack)initWithCoder:(id)coder;
- (ATXWidgetStack)initWithIdentifier:(id)identifier widgets:(id)widgets topWidgetIdentifier:(id)widgetIdentifier family:(int64_t)family allowsNewWidget:(BOOL)widget allowsSmartRotate:(BOOL)rotate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXWidgetStack:(id)stack;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXWidgetStack

- (ATXWidgetStack)initWithIdentifier:(id)identifier widgets:(id)widgets topWidgetIdentifier:(id)widgetIdentifier family:(int64_t)family allowsNewWidget:(BOOL)widget allowsSmartRotate:(BOOL)rotate
{
  identifierCopy = identifier;
  widgetsCopy = widgets;
  widgetIdentifierCopy = widgetIdentifier;
  v25.receiver = self;
  v25.super_class = ATXWidgetStack;
  v17 = [(ATXWidgetStack *)&v25 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [widgetsCopy copy];
    widgets = v17->_widgets;
    v17->_widgets = v20;

    v22 = [widgetIdentifierCopy copy];
    topWidgetIdentifier = v17->_topWidgetIdentifier;
    v17->_topWidgetIdentifier = v22;

    v17->_family = family;
    v17->_allowsNewWidget = widget;
    v17->_allowsSmartRotate = rotate;
  }

  return v17;
}

- (ATXWidgetStack)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"widgets"];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topWidgetIdentifier"];
  v12 = -[ATXWidgetStack initWithIdentifier:widgets:topWidgetIdentifier:family:allowsNewWidget:allowsSmartRotate:](self, "initWithIdentifier:widgets:topWidgetIdentifier:family:allowsNewWidget:allowsSmartRotate:", v5, v10, v11, [coderCopy decodeIntegerForKey:@"family"], objc_msgSend(coderCopy, "decodeBoolForKey:", @"allowsNewWidget"), objc_msgSend(coderCopy, "decodeBoolForKey:", @"allowsSmartRotate"));

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(ATXWidgetStack *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  widgets = [(ATXWidgetStack *)self widgets];
  [coderCopy encodeObject:widgets forKey:@"widgets"];

  [coderCopy encodeInteger:-[ATXWidgetStack family](self forKey:{"family"), @"family"}];
  topWidgetIdentifier = [(ATXWidgetStack *)self topWidgetIdentifier];
  [coderCopy encodeObject:topWidgetIdentifier forKey:@"topWidgetIdentifier"];

  [coderCopy encodeBool:-[ATXWidgetStack allowsNewWidget](self forKey:{"allowsNewWidget"), @"allowsNewWidget"}];
  [coderCopy encodeBool:-[ATXWidgetStack allowsSmartRotate](self forKey:{"allowsSmartRotate"), @"allowsSmartRotate"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXWidgetStack *)self isEqualToATXWidgetStack:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXWidgetStack:(id)stack
{
  stackCopy = stack;
  v5 = self->_identifier;
  v6 = v5;
  if (v5 == stackCopy[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }
  }

  v8 = self->_widgets;
  v9 = v8;
  if (v8 == stackCopy[3])
  {
  }

  else
  {
    v10 = [(NSArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v11 = self->_topWidgetIdentifier;
  v12 = v11;
  if (v11 == stackCopy[5])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (self->_family != stackCopy[4] || self->_allowsNewWidget != *(stackCopy + 8))
  {
    goto LABEL_16;
  }

  v14 = self->_allowsSmartRotate == *(stackCopy + 9);
LABEL_17:

  return v14;
}

- (unint64_t)hash
{
  identifier = [(ATXWidgetStack *)self identifier];
  v4 = [identifier hash];

  widgets = [(ATXWidgetStack *)self widgets];
  v6 = [widgets hash] - v4 + 32 * v4;

  topWidgetIdentifier = [(ATXWidgetStack *)self topWidgetIdentifier];
  v8 = [topWidgetIdentifier hash] - v6 + 32 * v6;

  v9 = 31 * ([(ATXWidgetStack *)self family]- v8 + 32 * v8);
  v10 = 31 * (v9 + [(ATXWidgetStack *)self allowsNewWidget]);
  return v10 + [(ATXWidgetStack *)self allowsSmartRotate];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  identifier = [(ATXWidgetStack *)self identifier];
  widgets = [(ATXWidgetStack *)self widgets];
  topWidgetIdentifier = [(ATXWidgetStack *)self topWidgetIdentifier];
  [(ATXWidgetStack *)self family];
  v7 = NSStringFromWidgetFamily();
  if ([(ATXWidgetStack *)self allowsNewWidget])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(ATXWidgetStack *)self allowsSmartRotate])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 initWithFormat:@"<ATXWidgetStack: (identifier: %@, widgets: %@, topWidgetIdentifier: %@, family: %@, allowsNewWidget: %@, allowsSmartRotate: %@)>", identifier, widgets, topWidgetIdentifier, v7, v8, v9];

  return v10;
}

- (NSDictionary)dictionaryRepresentation
{
  v15[6] = *MEMORY[0x277D85DE8];
  v14[0] = @"identifier";
  identifier = [(ATXWidgetStack *)self identifier];
  v15[0] = identifier;
  v14[1] = @"widgets";
  widgets = [(ATXWidgetStack *)self widgets];
  v5 = [widgets _pas_mappedArrayWithTransform:&__block_literal_global];
  v15[1] = v5;
  v14[2] = @"topWidgetIdentifier";
  topWidgetIdentifier = [(ATXWidgetStack *)self topWidgetIdentifier];
  null = topWidgetIdentifier;
  if (!topWidgetIdentifier)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v15[2] = null;
  v14[3] = @"family";
  [(ATXWidgetStack *)self family];
  v8 = NSStringFromWidgetFamily();
  v15[3] = v8;
  v14[4] = @"allowsNewWidget";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXWidgetStack allowsNewWidget](self, "allowsNewWidget")}];
  v15[4] = v9;
  v14[5] = @"allowsSmartRotate";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXWidgetStack allowsSmartRotate](self, "allowsSmartRotate")}];
  v15[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];

  if (!topWidgetIdentifier)
  {
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end