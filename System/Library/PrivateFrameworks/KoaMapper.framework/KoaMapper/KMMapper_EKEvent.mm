@interface KMMapper_EKEvent
- (KMMapper_EKEvent)init;
- (id)itemsFromExternalObject:(id)a3 additionalFields:(id)a4 error:(id *)a5;
@end

@implementation KMMapper_EKEvent

- (id)itemsFromExternalObject:(id)a3 additionalFields:(id)a4 error:(id *)a5
{
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  builder = self->_builder;
  v9 = [v7 eventIdentifier];
  v34 = 0;
  v10 = [(KVItemBuilder *)builder setItemType:15 itemId:v9 error:&v34];
  v11 = v34;
  if (v10)
  {
    v12 = self->_builder;
    v13 = [v7 title];
    v33 = v11;
    v14 = [(KVItemBuilder *)v12 addFieldWithType:650 value:v13 error:&v33];
    v15 = v33;

    if (v14)
    {
      v28 = v14;
      v29 = v13;
      v30 = a5;
      v16 = self->_builder;
      v27 = [v7 structuredLocation];
      v17 = [v27 title];
      v18 = v17;
      if (!v17)
      {
        v18 = [v7 location];
      }

      v32 = v15;
      v19 = [(KVItemBuilder *)v16 addFieldWithType:651 value:v18 error:&v32];
      v20 = v32;

      v21 = v19 == 0;
      if (!v17)
      {
      }

      v15 = v20;
      v13 = v29;
      a5 = v30;
      v14 = v28;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v23 = self->_builder;
      v31 = v15;
      v24 = [(KVItemBuilder *)v23 buildItemWithError:&v31];
      v11 = v31;

      if (v24)
      {
        v35[0] = v24;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
      }

      else
      {
        KMMapperSetBuilderError(a5, v11);
        v22 = 0;
      }

      goto LABEL_17;
    }

    v11 = v15;
  }

  else
  {
  }

  KMMapperSetBuilderError(a5, v11);
  v22 = 0;
LABEL_17:

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

- (KMMapper_EKEvent)init
{
  v6.receiver = self;
  v6.super_class = KMMapper_EKEvent;
  v2 = [(KMMapper_EKEvent *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end