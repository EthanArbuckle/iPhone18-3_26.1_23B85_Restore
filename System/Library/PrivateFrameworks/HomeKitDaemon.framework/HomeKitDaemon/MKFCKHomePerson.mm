@interface MKFCKHomePerson
- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
@end

@implementation MKFCKHomePerson

- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v26.receiver = self;
  v26.super_class = MKFCKHomePerson;
  v10 = [(MKFCKPerson *)&v26 exportFromLocalModel:v8 updatedProperties:a4 context:v9];
  if (v10)
  {
    v11 = [v8 home];
    v12 = [(MKFCKModel *)MKFCKHome fetchWithLocalModel:v11 context:v9];
    if (!v12)
    {
LABEL_14:

      goto LABEL_15;
    }

    v13 = [(MKFCKHomePerson *)self home];
    v14 = [v13 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      [(MKFCKHomePerson *)self setHome:v12];
    }

    v15 = [v8 linkedPhotosPerson];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 user];
      v18 = [v17 isOwner];

      if (v18)
      {
        v19 = [(MKFCKModel *)MKFCKPhotosPerson fetchWithLocalModel:v16 context:v9];
        if (v19)
        {
          v20 = [(MKFCKHomePerson *)self linkedPhotosPerson];
          v21 = HMFEqualObjects();

          if ((v21 & 1) == 0)
          {
            [(MKFCKHomePerson *)self setLinkedPhotosPerson:v19];
          }
        }

        goto LABEL_12;
      }

      v22 = [(MKFCKHomePerson *)self linkedSharedPhotosPersonModelID];
      v23 = [v16 modelID];
      v24 = HMFEqualObjects();

      if ((v24 & 1) == 0)
      {
        v19 = [v16 modelID];
        [(MKFCKHomePerson *)self setLinkedSharedPhotosPersonModelID:v19];
LABEL_12:
      }
    }

    goto LABEL_14;
  }

LABEL_15:

  return v10;
}

- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = MKFCKHomePerson;
  v10 = [(MKFCKPerson *)&v20 importIntoLocalModel:v8 updatedProperties:a4 context:v9];
  if (v10)
  {
    v11 = [(MKFCKHomePerson *)self home];
    v12 = [v11 fetchLocalModelWithContext:v9];

    if (v12)
    {
      v13 = [v8 home];
      v14 = HMFEqualObjects();

      if ((v14 & 1) == 0)
      {
        [v8 setHome:v12];
      }

      v15 = [(MKFCKHomePerson *)self linkedPhotosPerson];
      v16 = [v15 fetchLocalModelWithContext:v9];
      v17 = [v8 linkedPhotosPerson];
      v18 = HMFEqualObjects();

      if ((v18 & 1) == 0)
      {
        [v8 setLinkedPhotosPerson:v16];
      }
    }
  }

  return v10;
}

@end