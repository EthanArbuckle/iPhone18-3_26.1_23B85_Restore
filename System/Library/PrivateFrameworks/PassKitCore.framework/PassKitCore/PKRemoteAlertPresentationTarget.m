@interface PKRemoteAlertPresentationTarget
+ (id)createForSceneID:(id)a3 inProcess:(id)a4;
- (PKRemoteAlertPresentationTarget)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKRemoteAlertPresentationTarget

+ (id)createForSceneID:(id)a3 inProcess:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PKRemoteAlertPresentationTarget alloc];
  v9 = v7;
  v10 = v6;
  v11 = v10;
  v12 = 0;
  if (v8 && v9 && v10)
  {
    v18.receiver = v8;
    v18.super_class = PKRemoteAlertPresentationTarget;
    v13 = objc_msgSendSuper2(&v18, sel_init);
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, a4);
      v15 = [v9 copy];
      v16 = v14[2];
      v14[2] = v15;
    }

    v8 = v14;
    v12 = v8;
  }

  return v12;
}

- (PKRemoteAlertPresentationTarget)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKRemoteAlertPresentationTarget;
  v5 = [(PKRemoteAlertPresentationTarget *)&v13 init];
  if (!v5 || ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"process"], v6 = objc_claimAutoreleasedReturnValue(), process = v5->_process, v5->_process = v6, process, v5->_process) && (objc_msgSend(v4, "decodeObjectOfClass:forKey:", objc_opt_class(), @"sceneID"), v8 = objc_claimAutoreleasedReturnValue(), sceneID = v5->_sceneID, v5->_sceneID = v8, sceneID, v5->_sceneID))
  {
    v10 = v5;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKRemoteAlertPresentationTarget" code:0 userInfo:0];
    [v4 failWithError:v11];

    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  process = self->_process;
  v5 = a3;
  [v5 encodeObject:process forKey:@"process"];
  [v5 encodeObject:self->_sceneID forKey:@"sceneID"];
}

@end