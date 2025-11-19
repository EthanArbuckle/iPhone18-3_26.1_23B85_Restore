@interface HAP2CancelableObject
- (HAP2CancelableObject)init;
- (NSError)cancelError;
- (void)cancelWithError:(id)a3;
@end

@implementation HAP2CancelableObject

- (NSError)cancelError
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9445;
  v11 = __Block_byref_object_dispose__9446;
  v12 = 0;
  v3 = [(HAP2CancelableObject *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__HAP2CancelableObject_cancelError__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  v5 = [(HAP2CancelableObject *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HAP2CancelableObject_cancelWithError___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

void __40__HAP2CancelableObject_cancelWithError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 8))
  {
    objc_storeStrong((v1 + 8), *(a1 + 40));
  }
}

- (HAP2CancelableObject)init
{
  v6.receiver = self;
  v6.super_class = HAP2CancelableObject;
  v2 = [(HAP2CancelableObject *)&v6 init];
  if (v2)
  {
    v3 = [HAP2PropertyLock lockWithName:@"HAP2CancelableObject.propertyLock"];
    propertyLock = v2->_propertyLock;
    v2->_propertyLock = v3;
  }

  return v2;
}

@end