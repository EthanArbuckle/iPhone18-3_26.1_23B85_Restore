@interface LACUIHostedSceneAction
- (LACUIHostedSceneAction)initWithRawIdentifier:(unint64_t)a3 value:(id)a4;
- (id)description;
@end

@implementation LACUIHostedSceneAction

- (LACUIHostedSceneAction)initWithRawIdentifier:(unint64_t)a3 value:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = LACUIHostedSceneAction;
  v7 = [(LACUIHostedSceneAction *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_rawIdentifier = a3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || MEMORY[0x259C59C00](v6) == MEMORY[0x277D86478])
    {
      v9 = v6;
    }

    else if (v6)
    {
      v9 = [MEMORY[0x277CBEA90] bs_secureDataFromObject:v6];
    }

    else
    {
      v9 = objc_opt_new();
    }

    rawValue = v8->_rawValue;
    v8->_rawValue = v9;
  }

  return v8;
}

- (id)description
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v13[0] = @"identifier";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[LACUIHostedSceneAction rawIdentifier](self, "rawIdentifier")}];
  v13[1] = @"value";
  v14[0] = v5;
  v6 = MEMORY[0x277CCACA8];
  v7 = [(LACUIHostedSceneAction *)self rawValue];
  v8 = [v6 stringWithFormat:@"%@", v7];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v9];;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end