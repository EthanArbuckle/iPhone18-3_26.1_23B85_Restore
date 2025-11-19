@interface ATXWidgetStack
- (ATXWidgetStack)initWithCoder:(id)a3;
- (ATXWidgetStack)initWithIdentifier:(id)a3 widgets:(id)a4 topWidgetIdentifier:(id)a5 family:(int64_t)a6 allowsNewWidget:(BOOL)a7 allowsSmartRotate:(BOOL)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXWidgetStack:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXWidgetStack

- (ATXWidgetStack)initWithIdentifier:(id)a3 widgets:(id)a4 topWidgetIdentifier:(id)a5 family:(int64_t)a6 allowsNewWidget:(BOOL)a7 allowsSmartRotate:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v25.receiver = self;
  v25.super_class = ATXWidgetStack;
  v17 = [(ATXWidgetStack *)&v25 init];
  if (v17)
  {
    v18 = [v14 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [v15 copy];
    widgets = v17->_widgets;
    v17->_widgets = v20;

    v22 = [v16 copy];
    topWidgetIdentifier = v17->_topWidgetIdentifier;
    v17->_topWidgetIdentifier = v22;

    v17->_family = a6;
    v17->_allowsNewWidget = a7;
    v17->_allowsSmartRotate = a8;
  }

  return v17;
}

- (ATXWidgetStack)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"widgets"];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topWidgetIdentifier"];
  v12 = -[ATXWidgetStack initWithIdentifier:widgets:topWidgetIdentifier:family:allowsNewWidget:allowsSmartRotate:](self, "initWithIdentifier:widgets:topWidgetIdentifier:family:allowsNewWidget:allowsSmartRotate:", v5, v10, v11, [v4 decodeIntegerForKey:@"family"], objc_msgSend(v4, "decodeBoolForKey:", @"allowsNewWidget"), objc_msgSend(v4, "decodeBoolForKey:", @"allowsSmartRotate"));

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(ATXWidgetStack *)self identifier];
  [v7 encodeObject:v4 forKey:@"identifier"];

  v5 = [(ATXWidgetStack *)self widgets];
  [v7 encodeObject:v5 forKey:@"widgets"];

  [v7 encodeInteger:-[ATXWidgetStack family](self forKey:{"family"), @"family"}];
  v6 = [(ATXWidgetStack *)self topWidgetIdentifier];
  [v7 encodeObject:v6 forKey:@"topWidgetIdentifier"];

  [v7 encodeBool:-[ATXWidgetStack allowsNewWidget](self forKey:{"allowsNewWidget"), @"allowsNewWidget"}];
  [v7 encodeBool:-[ATXWidgetStack allowsSmartRotate](self forKey:{"allowsSmartRotate"), @"allowsSmartRotate"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXWidgetStack *)self isEqualToATXWidgetStack:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXWidgetStack:(id)a3
{
  v4 = a3;
  v5 = self->_identifier;
  v6 = v5;
  if (v5 == v4[2])
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
  if (v8 == v4[3])
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
  if (v11 == v4[5])
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

  if (self->_family != v4[4] || self->_allowsNewWidget != *(v4 + 8))
  {
    goto LABEL_16;
  }

  v14 = self->_allowsSmartRotate == *(v4 + 9);
LABEL_17:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(ATXWidgetStack *)self identifier];
  v4 = [v3 hash];

  v5 = [(ATXWidgetStack *)self widgets];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(ATXWidgetStack *)self topWidgetIdentifier];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = 31 * ([(ATXWidgetStack *)self family]- v8 + 32 * v8);
  v10 = 31 * (v9 + [(ATXWidgetStack *)self allowsNewWidget]);
  return v10 + [(ATXWidgetStack *)self allowsSmartRotate];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(ATXWidgetStack *)self identifier];
  v5 = [(ATXWidgetStack *)self widgets];
  v6 = [(ATXWidgetStack *)self topWidgetIdentifier];
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

  v10 = [v3 initWithFormat:@"<ATXWidgetStack: (identifier: %@, widgets: %@, topWidgetIdentifier: %@, family: %@, allowsNewWidget: %@, allowsSmartRotate: %@)>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (NSDictionary)dictionaryRepresentation
{
  v15[6] = *MEMORY[0x277D85DE8];
  v14[0] = @"identifier";
  v3 = [(ATXWidgetStack *)self identifier];
  v15[0] = v3;
  v14[1] = @"widgets";
  v4 = [(ATXWidgetStack *)self widgets];
  v5 = [v4 _pas_mappedArrayWithTransform:&__block_literal_global];
  v15[1] = v5;
  v14[2] = @"topWidgetIdentifier";
  v6 = [(ATXWidgetStack *)self topWidgetIdentifier];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v15[2] = v7;
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

  if (!v6)
  {
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end