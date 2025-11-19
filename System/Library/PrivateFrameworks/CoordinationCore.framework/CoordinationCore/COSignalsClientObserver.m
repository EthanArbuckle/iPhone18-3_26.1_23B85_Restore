@interface COSignalsClientObserver
- (BOOL)isEqual:(id)a3;
- (COSignalsClientObserver)initWithConnection:(id)a3 asAccessory:(id)a4 constraints:(id)a5 cluster:(id)a6;
@end

@implementation COSignalsClientObserver

- (COSignalsClientObserver)initWithConnection:(id)a3 asAccessory:(id)a4 constraints:(id)a5 cluster:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [(COSignalsClientObserver *)self initWithConnection:a3 cluster:a6];
  if (v12)
  {
    v13 = [v10 copy];
    accessory = v12->_accessory;
    v12->_accessory = v13;

    v15 = [v11 copy];
    constraints = v12->_constraints;
    v12->_constraints = v15;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COSignalsClientObserver;
  if ([(COClientObserver *)&v9 isEqual:v4])
  {
    v5 = [(COSignalsClientObserver *)self constraints];
    v6 = [v4 constraints];
    if (v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = [v5 isEqual:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end