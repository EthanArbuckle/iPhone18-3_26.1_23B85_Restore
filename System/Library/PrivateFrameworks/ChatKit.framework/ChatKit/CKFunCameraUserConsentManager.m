@interface CKFunCameraUserConsentManager
+ (void)presentFromViewController:(id)a3 presentedBlock:(id)a4 confirmBlock:(id)a5 cancelBlock:(id)a6;
- (CKFunCameraUserConsentManager)init;
@end

@implementation CKFunCameraUserConsentManager

+ (void)presentFromViewController:(id)a3 presentedBlock:(id)a4 confirmBlock:(id)a5 cancelBlock:(id)a6
{
  v9 = _Block_copy(a4);
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
  if (v9)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    v9 = sub_190841AA4;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v10 = sub_190841AA4;
  if (v11)
  {
LABEL_4:
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v11 = sub_190841A8C;
    goto LABEL_8;
  }

LABEL_7:
  v14 = 0;
LABEL_8:
  swift_getObjCClassMetadata();
  v15 = a3;
  static FunCameraUserConsentManager.present(fromViewController:presentedBlock:confirmBlock:cancelBlock:)(v15, v9, v12, v10, v13, v11, v14);
  sub_19022123C(v11);
  sub_19022123C(v10);
  sub_19022123C(v9);
}

- (CKFunCameraUserConsentManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FunCameraUserConsentManager();
  return [(CKFunCameraUserConsentManager *)&v3 init];
}

@end