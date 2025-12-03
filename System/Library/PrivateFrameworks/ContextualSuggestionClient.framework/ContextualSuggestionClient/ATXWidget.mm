@interface ATXWidget
- (ATXWidget)initWithCoder:(id)coder;
- (ATXWidget)initWithIdentifier:(id)identifier chsWidget:(id)widget suggestedWidget:(BOOL)suggestedWidget source:(id)source;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXWidget:(id)widget;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithSource:(id)source;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXWidget

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  identifier = [(ATXWidget *)self identifier];
  chsWidget = [(ATXWidget *)self chsWidget];
  if ([(ATXWidget *)self isSuggestedWidget])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  source = [(ATXWidget *)self source];
  v8 = [v3 initWithFormat:@"<ATXWidget: (identifier: %@, chsWidget: %@, isSuggestedWidget: %@, source: %@)>", identifier, chsWidget, v6, source];

  return v8;
}

- (ATXWidget)initWithIdentifier:(id)identifier chsWidget:(id)widget suggestedWidget:(BOOL)suggestedWidget source:(id)source
{
  identifierCopy = identifier;
  widgetCopy = widget;
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = ATXWidget;
  v13 = [(ATXWidget *)&v19 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    objc_storeStrong(&v13->_chsWidget, widget);
    v13->_suggestedWidget = suggestedWidget;
    v16 = [sourceCopy copy];
    source = v13->_source;
    v13->_source = v16;
  }

  return v13;
}

- (ATXWidget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widget"];
  v7 = [coderCopy decodeBoolForKey:@"suggestedWidget"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];

  v9 = [(ATXWidget *)self initWithIdentifier:v5 chsWidget:v6 suggestedWidget:v7 source:v8];
  return v9;
}

- (id)copyWithSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc(objc_opt_class());
  identifier = [(ATXWidget *)self identifier];
  chsWidget = [(ATXWidget *)self chsWidget];
  isSuggestedWidget = [(ATXWidget *)self isSuggestedWidget];
  v9 = [sourceCopy copy];

  v10 = [v5 initWithIdentifier:identifier chsWidget:chsWidget suggestedWidget:isSuggestedWidget source:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(ATXWidget *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  chsWidget = [(ATXWidget *)self chsWidget];
  [coderCopy encodeObject:chsWidget forKey:@"widget"];

  [coderCopy encodeBool:-[ATXWidget isSuggestedWidget](self forKey:{"isSuggestedWidget"), @"suggestedWidget"}];
  source = [(ATXWidget *)self source];
  [coderCopy encodeObject:source forKey:@"source"];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXWidget *)self isEqualToATXWidget:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXWidget:(id)widget
{
  widgetCopy = widget;
  v5 = self->_identifier;
  v6 = v5;
  if (v5 == widgetCopy[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v8 = self->_chsWidget;
  v9 = v8;
  if (v8 == widgetCopy[3])
  {
  }

  else
  {
    v10 = [(CHSWidget *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (self->_suggestedWidget != *(widgetCopy + 8))
  {
LABEL_12:
    v13 = 0;
    goto LABEL_15;
  }

  v11 = self->_source;
  v12 = v11;
  if (v11 == widgetCopy[5])
  {
    v13 = 1;
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];
  }

LABEL_15:
  return v13;
}

- (unint64_t)hash
{
  identifier = [(ATXWidget *)self identifier];
  v4 = [identifier hash];

  chsWidget = [(ATXWidget *)self chsWidget];
  v6 = [chsWidget hash] - v4 + 32 * v4;

  v7 = 31 * v6 + [(ATXWidget *)self isSuggestedWidget];
  source = [(ATXWidget *)self source];
  v9 = [source hash] - v7 + 32 * v7;

  return v9;
}

- (NSDictionary)dictionaryRepresentation
{
  v18[5] = *MEMORY[0x277D85DE8];
  v17[0] = @"identifier";
  identifier = [(ATXWidget *)self identifier];
  v18[0] = identifier;
  v17[1] = @"chsWidget";
  chsWidget = [(ATXWidget *)self chsWidget];
  v3 = [chsWidget description];
  v18[1] = v3;
  v17[2] = @"intent";
  chsWidget2 = [(ATXWidget *)self chsWidget];
  intentReference = [chsWidget2 intentReference];
  intent = [intentReference intent];
  v7 = [intent debugDescription];
  null = v7;
  if (!v7)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v18[2] = null;
  v17[3] = @"isSuggestedWidget";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXWidget isSuggestedWidget](self, "isSuggestedWidget")}];
  v18[3] = v9;
  v17[4] = @"source";
  source = [(ATXWidget *)self source];
  null2 = source;
  if (!source)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v18[4] = null2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  if (!source)
  {
  }

  if (!v7)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end