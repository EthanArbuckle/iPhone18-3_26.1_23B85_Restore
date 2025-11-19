@interface GDHome
- (GDHome)initWithHMHome:(id)a3;
- (NSArray)users;
- (id)persons;
@end

@implementation GDHome

- (id)persons
{
  v3 = objc_opt_new();
  v7 = objc_msgSend_personManagerSettings(self->_inner, v4, v5, v6);
  isFaceClassificationEnabled = objc_msgSend_isFaceClassificationEnabled(v7, v8, v9, v10);

  if (isFaceClassificationEnabled)
  {
    v15 = objc_msgSend_personManager(self->_inner, v12, v13, v14);
    if (v15)
    {
      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1C4EF5CFC;
      v24[3] = &unk_1E81EF9D8;
      v17 = v3;
      v25 = v17;
      v18 = v16;
      v26 = v18;
      objc_msgSend_fetchAllPersonsWithCompletion_(v15, v19, v24, v20);
      v21 = dispatch_time(0, 10000000000);
      if (dispatch_group_wait(v18, v21))
      {
        v22 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v22 = v17;
      }
    }

    else
    {
      v22 = v3;
    }
  }

  else
  {
    v22 = v3;
  }

  return v22;
}

- (NSArray)users
{
  v3 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_users(self->_inner, v4, v5, v6);
  v11 = objc_msgSend_currentUser(self->_inner, v8, v9, v10);
  v14 = objc_msgSend_arrayByAddingObject_(v7, v12, v11, v13);

  objc_autoreleasePoolPop(v3);
  v17 = objc_msgSend__pas_mappedArrayWithTransform_(v14, v15, &unk_1F4415FD8, v16);

  return v17;
}

- (GDHome)initWithHMHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDHome;
  v6 = [(GDHome *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inner, a3);
  }

  return v7;
}

@end