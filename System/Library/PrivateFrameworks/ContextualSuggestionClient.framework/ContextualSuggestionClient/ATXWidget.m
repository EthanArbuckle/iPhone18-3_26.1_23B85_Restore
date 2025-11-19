@interface ATXWidget
- (ATXWidget)initWithCoder:(id)a3;
- (ATXWidget)initWithIdentifier:(id)a3 chsWidget:(id)a4 suggestedWidget:(BOOL)a5 source:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXWidget:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithSource:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXWidget

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(ATXWidget *)self identifier];
  v5 = [(ATXWidget *)self chsWidget];
  if ([(ATXWidget *)self isSuggestedWidget])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(ATXWidget *)self source];
  v8 = [v3 initWithFormat:@"<ATXWidget: (identifier: %@, chsWidget: %@, isSuggestedWidget: %@, source: %@)>", v4, v5, v6, v7];

  return v8;
}

- (ATXWidget)initWithIdentifier:(id)a3 chsWidget:(id)a4 suggestedWidget:(BOOL)a5 source:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = ATXWidget;
  v13 = [(ATXWidget *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    objc_storeStrong(&v13->_chsWidget, a4);
    v13->_suggestedWidget = a5;
    v16 = [v12 copy];
    source = v13->_source;
    v13->_source = v16;
  }

  return v13;
}

- (ATXWidget)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widget"];
  v7 = [v4 decodeBoolForKey:@"suggestedWidget"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];

  v9 = [(ATXWidget *)self initWithIdentifier:v5 chsWidget:v6 suggestedWidget:v7 source:v8];
  return v9;
}

- (id)copyWithSource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(ATXWidget *)self identifier];
  v7 = [(ATXWidget *)self chsWidget];
  v8 = [(ATXWidget *)self isSuggestedWidget];
  v9 = [v4 copy];

  v10 = [v5 initWithIdentifier:v6 chsWidget:v7 suggestedWidget:v8 source:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXWidget *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(ATXWidget *)self chsWidget];
  [v4 encodeObject:v6 forKey:@"widget"];

  [v4 encodeBool:-[ATXWidget isSuggestedWidget](self forKey:{"isSuggestedWidget"), @"suggestedWidget"}];
  v7 = [(ATXWidget *)self source];
  [v4 encodeObject:v7 forKey:@"source"];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXWidget *)self isEqualToATXWidget:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXWidget:(id)a3
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
      goto LABEL_12;
    }
  }

  v8 = self->_chsWidget;
  v9 = v8;
  if (v8 == v4[3])
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

  if (self->_suggestedWidget != *(v4 + 8))
  {
LABEL_12:
    v13 = 0;
    goto LABEL_15;
  }

  v11 = self->_source;
  v12 = v11;
  if (v11 == v4[5])
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
  v3 = [(ATXWidget *)self identifier];
  v4 = [v3 hash];

  v5 = [(ATXWidget *)self chsWidget];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = 31 * v6 + [(ATXWidget *)self isSuggestedWidget];
  v8 = [(ATXWidget *)self source];
  v9 = [v8 hash] - v7 + 32 * v7;

  return v9;
}

- (NSDictionary)dictionaryRepresentation
{
  v18[5] = *MEMORY[0x277D85DE8];
  v17[0] = @"identifier";
  v16 = [(ATXWidget *)self identifier];
  v18[0] = v16;
  v17[1] = @"chsWidget";
  v15 = [(ATXWidget *)self chsWidget];
  v3 = [v15 description];
  v18[1] = v3;
  v17[2] = @"intent";
  v4 = [(ATXWidget *)self chsWidget];
  v5 = [v4 intentReference];
  v6 = [v5 intent];
  v7 = [v6 debugDescription];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v18[2] = v8;
  v17[3] = @"isSuggestedWidget";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXWidget isSuggestedWidget](self, "isSuggestedWidget")}];
  v18[3] = v9;
  v17[4] = @"source";
  v10 = [(ATXWidget *)self source];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v18[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  if (!v10)
  {
  }

  if (!v7)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end