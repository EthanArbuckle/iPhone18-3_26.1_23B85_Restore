@interface MKFCKHomePerson
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
@end

@implementation MKFCKHomePerson

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = MKFCKHomePerson;
  v10 = [(MKFCKPerson *)&v26 exportFromLocalModel:modelCopy updatedProperties:properties context:contextCopy];
  if (v10)
  {
    home = [modelCopy home];
    v12 = [(MKFCKModel *)MKFCKHome fetchWithLocalModel:home context:contextCopy];
    if (!v12)
    {
LABEL_14:

      goto LABEL_15;
    }

    home2 = [(MKFCKHomePerson *)self home];
    v14 = [home2 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      [(MKFCKHomePerson *)self setHome:v12];
    }

    linkedPhotosPerson = [modelCopy linkedPhotosPerson];
    v16 = linkedPhotosPerson;
    if (linkedPhotosPerson)
    {
      user = [linkedPhotosPerson user];
      isOwner = [user isOwner];

      if (isOwner)
      {
        modelID2 = [(MKFCKModel *)MKFCKPhotosPerson fetchWithLocalModel:v16 context:contextCopy];
        if (modelID2)
        {
          linkedPhotosPerson2 = [(MKFCKHomePerson *)self linkedPhotosPerson];
          v21 = HMFEqualObjects();

          if ((v21 & 1) == 0)
          {
            [(MKFCKHomePerson *)self setLinkedPhotosPerson:modelID2];
          }
        }

        goto LABEL_12;
      }

      linkedSharedPhotosPersonModelID = [(MKFCKHomePerson *)self linkedSharedPhotosPersonModelID];
      modelID = [v16 modelID];
      v24 = HMFEqualObjects();

      if ((v24 & 1) == 0)
      {
        modelID2 = [v16 modelID];
        [(MKFCKHomePerson *)self setLinkedSharedPhotosPersonModelID:modelID2];
LABEL_12:
      }
    }

    goto LABEL_14;
  }

LABEL_15:

  return v10;
}

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = MKFCKHomePerson;
  v10 = [(MKFCKPerson *)&v20 importIntoLocalModel:modelCopy updatedProperties:properties context:contextCopy];
  if (v10)
  {
    home = [(MKFCKHomePerson *)self home];
    v12 = [home fetchLocalModelWithContext:contextCopy];

    if (v12)
    {
      home2 = [modelCopy home];
      v14 = HMFEqualObjects();

      if ((v14 & 1) == 0)
      {
        [modelCopy setHome:v12];
      }

      linkedPhotosPerson = [(MKFCKHomePerson *)self linkedPhotosPerson];
      v16 = [linkedPhotosPerson fetchLocalModelWithContext:contextCopy];
      linkedPhotosPerson2 = [modelCopy linkedPhotosPerson];
      v18 = HMFEqualObjects();

      if ((v18 & 1) == 0)
      {
        [modelCopy setLinkedPhotosPerson:v16];
      }
    }
  }

  return v10;
}

@end