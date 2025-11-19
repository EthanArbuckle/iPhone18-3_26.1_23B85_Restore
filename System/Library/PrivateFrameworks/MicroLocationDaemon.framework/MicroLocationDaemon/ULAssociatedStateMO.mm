@interface ULAssociatedStateMO
+ (id)createFromDO:(const void *)a3 withLoiMO:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation ULAssociatedStateMO

+ (id)createFromDO:(const void *)a3 withLoiMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [[ULAssociatedStateMO alloc] initWithContext:v8];
  [(ULAssociatedStateMO *)v9 setLoi:v7];
  [(ULAssociatedStateMO *)v9 setTimestamp:*(a3 + 5)];
  [(ULAssociatedStateMO *)v9 setIsAssociated:*(a3 + 48)];
  v10 = MEMORY[0x277CCACA8];
  CLMacAddress::str(a3 + 7, __p);
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = [v10 stringWithUTF8String:v11];
  [(ULAssociatedStateMO *)v9 setMacAddress:v12];

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  [(ULAssociatedStateMO *)v9 setBand:*(a3 + 16)];
  [(ULAssociatedStateMO *)v9 setChannel:*(a3 + 17)];

  return v9;
}

@end