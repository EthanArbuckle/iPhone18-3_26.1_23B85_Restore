@interface _NAUINamedViewConstraints
- (_NAUINamedViewConstraints)initWithName:(id)name constraints:(id)constraints stalenessToken:(id)token;
@end

@implementation _NAUINamedViewConstraints

- (_NAUINamedViewConstraints)initWithName:(id)name constraints:(id)constraints stalenessToken:(id)token
{
  nameCopy = name;
  constraintsCopy = constraints;
  tokenCopy = token;
  v17.receiver = self;
  v17.super_class = _NAUINamedViewConstraints;
  v12 = [(_NAUINamedViewConstraints *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_constraints, constraints);
    if (tokenCopy)
    {
      null = tokenCopy;
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    stalenessToken = v13->_stalenessToken;
    v13->_stalenessToken = null;
  }

  return v13;
}

@end