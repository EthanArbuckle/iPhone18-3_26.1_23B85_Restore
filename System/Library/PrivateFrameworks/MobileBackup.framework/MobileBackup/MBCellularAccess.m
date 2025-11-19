@interface MBCellularAccess
+ (id)expensiveCellularAccess;
+ (id)inexpensiveCellularAccess;
- (BOOL)isEqual:(id)a3;
- (MBCellularAccess)init;
- (MBCellularAccess)initWithCoder:(id)a3;
- (MBCellularAccess)initWithDictionaryRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBCellularAccess

+ (id)expensiveCellularAccess
{
  v2 = objc_opt_new();
  [v2 setAllowsExpensiveNetworkAccess:1];

  return v2;
}

+ (id)inexpensiveCellularAccess
{
  v2 = objc_opt_new();
  [v2 setAllowsExpensiveNetworkAccess:0];

  return v2;
}

- (MBCellularAccess)init
{
  v3.receiver = self;
  v3.super_class = MBCellularAccess;
  result = [(MBCellularAccess *)&v3 init];
  if (result)
  {
    *&result->_allowsExpensiveNetworkAccess = 256;
  }

  return result;
}

- (MBCellularAccess)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MBCellularAccess;
  v5 = [(MBCellularAccess *)&v11 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v4 objectForKeyedSubscript:@"allowsExpensiveNetworkAccess"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_11:

    v9 = 0;
    goto LABEL_12;
  }

  v5->_allowsExpensiveNetworkAccess = [v6 BOOLValue];
  v7 = [v4 objectForKeyedSubscript:@"allowsConstrainedNetworkAccess"];

  if (!v7)
  {
    v8 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = v7;
    goto LABEL_11;
  }

  v8 = [v7 BOOLValue];
LABEL_8:
  v5->_allowsConstrainedNetworkAccess = v8;

LABEL_9:
  v9 = v5;
LABEL_12:

  return v9;
}

- (id)dictionaryRepresentation
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"allowsExpensiveNetworkAccess";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[MBCellularAccess allowsExpensiveNetworkAccess](self, "allowsExpensiveNetworkAccess")}];
  v8[1] = @"allowsConstrainedNetworkAccess";
  v9[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MBCellularAccess allowsConstrainedNetworkAccess](self, "allowsConstrainedNetworkAccess")}];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[MBCellularAccess allowsExpensiveNetworkAccess](self, "allowsExpensiveNetworkAccess"), v5 == [v4 allowsExpensiveNetworkAccess]))
  {
    v7 = [(MBCellularAccess *)self allowsConstrainedNetworkAccess];
    v6 = v7 ^ [v4 allowsConstrainedNetworkAccess] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (MBCellularAccess)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MBCellularAccess;
  v5 = [(MBCellularAccess *)&v7 init];
  if (v5)
  {
    -[MBCellularAccess setAllowsExpensiveNetworkAccess:](v5, "setAllowsExpensiveNetworkAccess:", [v4 decodeBoolForKey:@"allowsExpensiveNetworkAccess"]);
    -[MBCellularAccess setAllowsConstrainedNetworkAccess:](v5, "setAllowsConstrainedNetworkAccess:", [v4 decodeBoolForKey:@"allowsConstrainedNetworkAccess"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[MBCellularAccess allowsExpensiveNetworkAccess](self forKey:{"allowsExpensiveNetworkAccess"), @"allowsExpensiveNetworkAccess"}];
  [v4 encodeBool:-[MBCellularAccess allowsConstrainedNetworkAccess](self forKey:{"allowsConstrainedNetworkAccess"), @"allowsConstrainedNetworkAccess"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setAllowsExpensiveNetworkAccess:{-[MBCellularAccess allowsExpensiveNetworkAccess](self, "allowsExpensiveNetworkAccess")}];
  [v4 setAllowsConstrainedNetworkAccess:{-[MBCellularAccess allowsConstrainedNetworkAccess](self, "allowsConstrainedNetworkAccess")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%s: %p; allowsExpensiveNetworkAccess=%d, allowsConstrainedNetworkAccess=%d>", class_getName(v4), self, -[MBCellularAccess allowsExpensiveNetworkAccess](self, "allowsExpensiveNetworkAccess"), -[MBCellularAccess allowsConstrainedNetworkAccess](self, "allowsConstrainedNetworkAccess")];
}

@end