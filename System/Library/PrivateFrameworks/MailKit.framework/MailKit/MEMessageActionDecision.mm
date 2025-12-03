@interface MEMessageActionDecision
+ (MEMessageActionDecision)decisionApplyingAction:(MEMessageAction *)action;
+ (MEMessageActionDecision)decisionApplyingActions:(NSArray *)actions;
+ (MEMessageActionDecision)invokeAgainWithBody;
- (BOOL)isEqual:(id)equal;
- (MEMessageActionDecision)initWithActions:(id)actions invokeAgainWithBody:(BOOL)body;
- (MEMessageActionDecision)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MEMessageActionDecision

+ (MEMessageActionDecision)decisionApplyingAction:(MEMessageAction *)action
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = action;
  v4 = [MEMessageActionDecision alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [(MEMessageActionDecision *)v4 initWithActions:v5 invokeAgainWithBody:0];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (MEMessageActionDecision)decisionApplyingActions:(NSArray *)actions
{
  v3 = actions;
  v4 = [[MEMessageActionDecision alloc] initWithActions:v3 invokeAgainWithBody:0];

  return v4;
}

+ (MEMessageActionDecision)invokeAgainWithBody
{
  v2 = [[MEMessageActionDecision alloc] initWithActions:0 invokeAgainWithBody:1];

  return v2;
}

- (MEMessageActionDecision)initWithActions:(id)actions invokeAgainWithBody:(BOOL)body
{
  actionsCopy = actions;
  v11.receiver = self;
  v11.super_class = MEMessageActionDecision;
  v8 = [(MEMessageActionDecision *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_actions, actions);
    v9->_invokeAgainWithBody = body;
  }

  return v9;
}

- (MEMessageActionDecision)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"EFPropertyKey_invokeAgainWithBody"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_actions"];
  actions = self->_actions;
  self->_actions = v9;

  v11 = v9;
  v12 = [(MEMessageActionDecision *)self initWithActions:v11 invokeAgainWithBody:v5];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actions = [(MEMessageActionDecision *)self actions];
  [coderCopy encodeObject:actions forKey:@"EFPropertyKey_actions"];

  [coderCopy encodeBool:-[MEMessageActionDecision invokeAgainWithBody](self forKey:{"invokeAgainWithBody"), @"EFPropertyKey_invokeAgainWithBody"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
    actions = [(MEMessageActionDecision *)self actions];
    actions2 = [v6 actions];
    if (EFArraysAreEqual())
    {
      invokeAgainWithBody = [(MEMessageActionDecision *)self invokeAgainWithBody];
      v10 = invokeAgainWithBody ^ [v6 invokeAgainWithBody] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  actions = [(MEMessageActionDecision *)self actions];
  v5 = [v3 stringWithFormat:@"MEMessageActionDecision: Actions:%@, invokeAgainWithBody: %ld", actions, -[MEMessageActionDecision invokeAgainWithBody](self, "invokeAgainWithBody")];

  return v5;
}

@end