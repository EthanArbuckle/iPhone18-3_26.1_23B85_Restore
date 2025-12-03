@interface CCHomeContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCHome)home;
- (CCHomeAccessory)accessory;
- (CCHomeContent)initWithEntity:(id)entity entityType:(unsigned int)type error:(id *)error;
- (CCHomeContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCHomeRoom)room;
- (CCHomeScene)scene;
- (CCHomeService)service;
- (CCHomeServiceGroup)serviceGroup;
- (CCHomeTrigger)trigger;
- (CCHomeZone)zone;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCHomeContent

- (CCHomeContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v55[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"home"];
    if (v9)
    {
      v55[0] = 0;
      v10 = [[CCHome alloc] initWithJSONDictionary:v9 error:v55];
      v11 = v55[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v25 = 0;
LABEL_72:

        goto LABEL_73;
      }

      v9 = v10;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"zone"];
    if (v12)
    {
      v54 = 0;
      v13 = [[CCHomeZone alloc] initWithJSONDictionary:v12 error:&v54];
      v14 = v54;
      v10 = v14;
      if (!v13 || v14)
      {
        CCSetError();
        v25 = 0;
LABEL_71:

        goto LABEL_72;
      }

      v12 = v13;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"room"];
    if (v10)
    {
      v53 = 0;
      v15 = [[CCHomeRoom alloc] initWithJSONDictionary:v10 error:&v53];
      v16 = v53;
      v13 = v16;
      if (!v15 || v16)
      {
        CCSetError();
        v25 = 0;
LABEL_70:

        goto LABEL_71;
      }

      v10 = v15;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"service"];
    if (v13)
    {
      v52 = 0;
      v17 = [[CCHomeService alloc] initWithJSONDictionary:v13 error:&v52];
      v18 = v52;
      v15 = v18;
      if (!v17 || v18)
      {
        CCSetError();
        v25 = 0;
LABEL_69:

        goto LABEL_70;
      }

      v13 = v17;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"serviceGroup"];
    if (v15)
    {
      selfCopy = self;
      v51 = 0;
      v19 = v15;
      v15 = [[CCHomeServiceGroup alloc] initWithJSONDictionary:v15 error:&v51];
      v20 = v51;
      v17 = v20;
      v47 = v15;
      if (!v15 || v20)
      {
        CCSetError();
        v25 = 0;
        v15 = v19;
        self = selfCopy;
LABEL_68:

        goto LABEL_69;
      }

      self = selfCopy;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"scene"];
    v44 = v15;
    if (v21)
    {
      v17 = v21;
      v50 = 0;
      v22 = [[CCHomeScene alloc] initWithJSONDictionary:v21 error:&v50];
      v23 = v50;
      v46 = v22;
      if (!v22 || v23)
      {
        v47 = v23;
        CCSetError();
        v25 = 0;
        v15 = v44;
LABEL_67:

        goto LABEL_68;
      }

      v15 = v44;
      v24 = v46;
    }

    else
    {
      v24 = 0;
    }

    v43 = v24;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"trigger"];
    if (v26)
    {
      v49 = 0;
      v47 = v26;
      v27 = [[CCHomeTrigger alloc] initWithJSONDictionary:v26 error:&v49];
      v28 = v49;
      if (!v27 || v28)
      {
        v46 = v28;
        CCSetError();
        goto LABEL_48;
      }

      v47 = v27;
      v15 = v44;
    }

    else
    {
      v47 = 0;
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"accessory"];
    if (!v29)
    {
      v32 = 0;
      goto LABEL_45;
    }

    v48 = 0;
    v46 = v29;
    v30 = [[CCHomeAccessory alloc] initWithJSONDictionary:v29 error:&v48];
    v31 = v48;
    v27 = v31;
    if (v30 && !v31)
    {

      v32 = v30;
      v15 = v44;
LABEL_45:
      v46 = v32;
      if (v9)
      {
        v33 = v9;
        v34 = 1;
      }

      else
      {
        v34 = 0;
      }

      v27 = v9;
      if (v12)
      {
        v27 = v12;

        v34 = 2;
      }

      if (v10)
      {
        v37 = v10;

        v34 = 3;
        v27 = v37;
      }

      if (v13)
      {
        v38 = v13;

        v34 = 4;
        v27 = v38;
      }

      if (v15)
      {
        v39 = v15;

        v34 = 5;
        v27 = v39;
      }

      if (v43)
      {
        v40 = v43;

        v34 = 6;
        v27 = v40;
      }

      if (v47)
      {
        v41 = v47;

        v34 = 7;
        v27 = v41;
      }

      if (v46)
      {
        v36 = v46;

        v42 = 8;
        v27 = v36;
      }

      else
      {
        v42 = v34;
      }

      v25 = [[CCHomeContent alloc] initWithEntity:v27 entityType:v42 error:error];
      goto LABEL_66;
    }

    CCSetError();

LABEL_48:
    v25 = 0;
    v15 = v44;
LABEL_66:

    v17 = v43;
    goto LABEL_67;
  }

  CCSetError();
  v25 = 0;
LABEL_73:

  return v25;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  entityType = self->_entityType;
  if (entityType == 1)
  {
    if (!self->_home)
    {
      goto LABEL_25;
    }

    home = [(CCHomeContent *)self home];
    jsonDictionary = [home jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"home"];

    entityType = self->_entityType;
  }

  if (entityType == 2)
  {
    if (!self->_zone)
    {
      goto LABEL_25;
    }

    v7 = [(CCHomeContent *)self zone];
    jsonDictionary2 = [v7 jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"zone"];

    entityType = self->_entityType;
  }

  if (entityType == 3)
  {
    if (!self->_room)
    {
      goto LABEL_25;
    }

    room = [(CCHomeContent *)self room];
    jsonDictionary3 = [room jsonDictionary];
    [v3 setObject:jsonDictionary3 forKeyedSubscript:@"room"];

    entityType = self->_entityType;
  }

  if (entityType == 4)
  {
    if (!self->_service)
    {
      goto LABEL_25;
    }

    service = [(CCHomeContent *)self service];
    jsonDictionary4 = [service jsonDictionary];
    [v3 setObject:jsonDictionary4 forKeyedSubscript:@"service"];

    entityType = self->_entityType;
  }

  if (entityType == 5)
  {
    if (!self->_serviceGroup)
    {
      goto LABEL_25;
    }

    serviceGroup = [(CCHomeContent *)self serviceGroup];
    jsonDictionary5 = [serviceGroup jsonDictionary];
    [v3 setObject:jsonDictionary5 forKeyedSubscript:@"serviceGroup"];

    entityType = self->_entityType;
  }

  if (entityType == 6)
  {
    if (!self->_scene)
    {
      goto LABEL_25;
    }

    scene = [(CCHomeContent *)self scene];
    jsonDictionary6 = [scene jsonDictionary];
    [v3 setObject:jsonDictionary6 forKeyedSubscript:@"scene"];

    entityType = self->_entityType;
  }

  if (entityType == 7)
  {
    if (!self->_trigger)
    {
      goto LABEL_25;
    }

    trigger = [(CCHomeContent *)self trigger];
    jsonDictionary7 = [trigger jsonDictionary];
    [v3 setObject:jsonDictionary7 forKeyedSubscript:@"trigger"];

    entityType = self->_entityType;
  }

  if (entityType == 8 && self->_accessory)
  {
    accessory = [(CCHomeContent *)self accessory];
    jsonDictionary8 = [accessory jsonDictionary];
    [v3 setObject:jsonDictionary8 forKeyedSubscript:@"accessory"];
  }

LABEL_25:
  v21 = [v3 copy];

  return v21;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_home)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7691 subMessageValue:self->_home];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_zone)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7692 subMessageValue:self->_zone];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_room)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7693 subMessageValue:self->_room];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_service)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7694 subMessageValue:self->_service];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_serviceGroup)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7695 subMessageValue:self->_serviceGroup];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_scene)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7696 subMessageValue:self->_scene];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_trigger)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7697 subMessageValue:self->_trigger];
    blockCopy[2](blockCopy, v11);
  }

  v12 = blockCopy;
  if (self->_accessory)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7698 subMessageValue:self->_accessory];
    blockCopy[2](blockCopy, v13);

    v12 = blockCopy;
  }
}

- (CCHomeAccessory)accessory
{
  v2 = [(CCHomeAccessory *)self->_accessory copy];

  return v2;
}

- (CCHomeTrigger)trigger
{
  v2 = [(CCHomeTrigger *)self->_trigger copy];

  return v2;
}

- (CCHomeScene)scene
{
  v2 = [(CCHomeScene *)self->_scene copy];

  return v2;
}

- (CCHomeServiceGroup)serviceGroup
{
  v2 = [(CCHomeServiceGroup *)self->_serviceGroup copy];

  return v2;
}

- (CCHomeService)service
{
  v2 = [(CCHomeService *)self->_service copy];

  return v2;
}

- (CCHomeRoom)room
{
  v2 = [(CCHomeRoom *)self->_room copy];

  return v2;
}

- (CCHomeZone)zone
{
  v2 = [(CCHomeZone *)self->_zone copy];

  return v2;
}

- (CCHome)home
{
  v2 = [(CCHome *)self->_home copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_61;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v7;
        v17 = *&v6[v16];
        if (v17 == -1 || v17 >= *&v6[*v8])
        {
          break;
        }

        v18 = *(*&v6[*v11] + v17);
        *&v6[v16] = v17 + 1;
        v15 |= (v18 & 0x7F) << v13;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v20 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_62;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v21 = *&v6[*v9];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15;
      }

      if (v21)
      {
        goto LABEL_62;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            v69 = [CCHomeRoom alloc];
            v70 = CCPBReaderReadDataNoCopy();
            v104 = 0;
            v71 = [(CCItemMessage *)v69 initWithData:v70 error:&v104];
            v10 = v104;
            room = self->_room;
            self->_room = v71;

            if (v10)
            {
              goto LABEL_52;
            }

            home = self->_home;
            self->_home = 0;

            zone = self->_zone;
            self->_zone = 0;

            self->_entityType = 3;
            goto LABEL_47;
          }

          if (v22 == 4)
          {
            v37 = [CCHomeService alloc];
            v38 = CCPBReaderReadDataNoCopy();
            v103 = 0;
            v39 = [(CCItemMessage *)v37 initWithData:v38 error:&v103];
            v10 = v103;
            service = self->_service;
            self->_service = v39;

            if (v10)
            {
              goto LABEL_52;
            }

            v41 = self->_home;
            self->_home = 0;

            v42 = self->_zone;
            self->_zone = 0;

            v43 = self->_room;
            self->_room = 0;

            self->_entityType = 4;
            goto LABEL_48;
          }
        }

        else
        {
          if (v22 == 1)
          {
            v55 = [CCHome alloc];
            v56 = CCPBReaderReadDataNoCopy();
            v106 = 0;
            v57 = [(CCItemMessage *)v55 initWithData:v56 error:&v106];
            v10 = v106;
            v58 = self->_home;
            self->_home = v57;

            if (v10)
            {
              goto LABEL_52;
            }

            self->_entityType = 1;
            v59 = self->_zone;
            self->_zone = 0;

            goto LABEL_42;
          }

          if (v22 == 2)
          {
            v23 = [CCHomeZone alloc];
            v24 = CCPBReaderReadDataNoCopy();
            v105 = 0;
            v25 = [(CCItemMessage *)v23 initWithData:v24 error:&v105];
            v10 = v105;
            v26 = self->_zone;
            self->_zone = v25;

            if (v10)
            {
              goto LABEL_52;
            }

            v27 = self->_home;
            self->_home = 0;

            self->_entityType = 2;
LABEL_42:
            v60 = self->_room;
            self->_room = 0;

LABEL_47:
            v75 = self->_service;
            self->_service = 0;

LABEL_48:
            serviceGroup = self->_serviceGroup;
            self->_serviceGroup = 0;

LABEL_49:
            scene = self->_scene;
            self->_scene = 0;

LABEL_50:
            trigger = self->_trigger;
            self->_trigger = 0;

LABEL_51:
            accessory = self->_accessory;
            self->_accessory = 0;

            goto LABEL_52;
          }
        }

        goto LABEL_56;
      }

      if (v22 <= 6)
      {
        if (v22 == 5)
        {
          v61 = [CCHomeServiceGroup alloc];
          v62 = CCPBReaderReadDataNoCopy();
          v102 = 0;
          v63 = [(CCItemMessage *)v61 initWithData:v62 error:&v102];
          v10 = v102;
          v64 = self->_serviceGroup;
          self->_serviceGroup = v63;

          if (v10)
          {
            goto LABEL_52;
          }

          v65 = self->_home;
          self->_home = 0;

          v66 = self->_zone;
          self->_zone = 0;

          v67 = self->_room;
          self->_room = 0;

          v68 = self->_service;
          self->_service = 0;

          self->_entityType = 5;
          goto LABEL_49;
        }

        if (v22 == 6)
        {
          v28 = [CCHomeScene alloc];
          v29 = CCPBReaderReadDataNoCopy();
          v101 = 0;
          v30 = [(CCItemMessage *)v28 initWithData:v29 error:&v101];
          v10 = v101;
          v31 = self->_scene;
          self->_scene = v30;

          if (v10)
          {
            goto LABEL_52;
          }

          v32 = self->_home;
          self->_home = 0;

          v33 = self->_zone;
          self->_zone = 0;

          v34 = self->_room;
          self->_room = 0;

          v35 = self->_service;
          self->_service = 0;

          v36 = self->_serviceGroup;
          self->_serviceGroup = 0;

          self->_entityType = 6;
          goto LABEL_50;
        }

        goto LABEL_56;
      }

      if (v22 == 7)
      {
        v80 = [CCHomeTrigger alloc];
        v81 = CCPBReaderReadDataNoCopy();
        v100 = 0;
        v82 = [(CCItemMessage *)v80 initWithData:v81 error:&v100];
        v10 = v100;
        v83 = self->_trigger;
        self->_trigger = v82;

        if (!v10)
        {
          v84 = self->_home;
          self->_home = 0;

          v85 = self->_zone;
          self->_zone = 0;

          v86 = self->_room;
          self->_room = 0;

          v87 = self->_service;
          self->_service = 0;

          v88 = self->_serviceGroup;
          self->_serviceGroup = 0;

          v89 = self->_scene;
          self->_scene = 0;

          self->_entityType = 7;
          goto LABEL_51;
        }
      }

      else
      {
        if (v22 != 8)
        {
LABEL_56:
          if (CCPBReaderSkipValueWithTag())
          {
            v10 = 0;
          }

          else
          {
            v90 = objc_opt_class();
            v91 = NSStringFromClass(v90);
            v92 = *&v6[*v9];
            v10 = CCSkipFieldErrorForMessage();
          }

          goto LABEL_52;
        }

        v44 = [CCHomeAccessory alloc];
        v45 = CCPBReaderReadDataNoCopy();
        v99 = 0;
        v46 = [(CCItemMessage *)v44 initWithData:v45 error:&v99];
        v10 = v99;
        v47 = self->_accessory;
        self->_accessory = v46;

        if (!v10)
        {
          v48 = self->_home;
          self->_home = 0;

          v49 = self->_zone;
          self->_zone = 0;

          v50 = self->_room;
          self->_room = 0;

          v51 = self->_service;
          self->_service = 0;

          v52 = self->_serviceGroup;
          self->_serviceGroup = 0;

          v53 = self->_scene;
          self->_scene = 0;

          v54 = self->_trigger;
          self->_trigger = 0;

          self->_entityType = 8;
        }
      }

LABEL_52:
      if (*&v6[*v7] < *&v6[*v8])
      {
        continue;
      }
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_63;
  }

LABEL_61:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v97 = 1;
    goto LABEL_65;
  }

LABEL_62:
  v93 = objc_opt_class();
  v94 = NSStringFromClass(v93);
  v95 = *&v6[*v9];
  v96 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_63:
  v97 = 0;
LABEL_65:

  return v97;
}

- (CCHomeContent)initWithEntity:(id)entity entityType:(unsigned int)type error:(id *)error
{
  entityCopy = entity;
  v9 = objc_opt_new();
  if (entityCopy && type == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      goto LABEL_32;
    }

LABEL_34:
    CCSetError();
    selfCopy = 0;
    goto LABEL_35;
  }

  if (entityCopy && type == 2)
  {
    objc_opt_class();
    v12 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v12)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (entityCopy && type == 3)
  {
    objc_opt_class();
    v13 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v13)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (entityCopy && type == 4)
  {
    objc_opt_class();
    v14 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v14)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (entityCopy && type == 5)
  {
    objc_opt_class();
    v15 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v15)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (entityCopy && type == 6)
  {
    objc_opt_class();
    v16 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v16)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (entityCopy && type == 7)
  {
    objc_opt_class();
    v17 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v17)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  v11 = 0;
  if (!entityCopy || type != 8)
  {
    goto LABEL_33;
  }

  objc_opt_class();
  v23 = 0;
  v18 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if ((v18 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_32:
  data = [entityCopy data];
  CCPBDataWriterWriteDataField();

LABEL_33:
  immutableData = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_35:

  return selfCopy;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier - 7690) > 0x14)
  {
    return 0;
  }

  else
  {
    return off_1E73E75E8[(identifier - 7690)];
  }
}

@end