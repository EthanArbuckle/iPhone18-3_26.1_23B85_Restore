@interface CCAppIntentsExtractedEntityContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityAppointment)appointment;
- (CCAppIntentsExtractedEntityBusinessMembershipCard)businessMembershipCard;
- (CCAppIntentsExtractedEntityContent)initWithEntity:(id)a3 entityType:(unsigned int)a4 error:(id *)a5;
- (CCAppIntentsExtractedEntityContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityFlightReservation)flightReservation;
- (CCAppIntentsExtractedEntityHotelReservation)hotelReservation;
- (CCAppIntentsExtractedEntityMedicalInsuranceCard)medicalInsuranceCard;
- (CCAppIntentsExtractedEntityParty)party;
- (CCAppIntentsExtractedEntityPersonalId)personalId;
- (CCAppIntentsExtractedEntityRentalCarReservation)rentalCarReservation;
- (CCAppIntentsExtractedEntityRestaurantReservation)restaurantReservation;
- (CCAppIntentsExtractedEntityTicketedShow)ticketedShow;
- (CCAppIntentsExtractedEntityTicketedTransportation)ticketedTransportation;
- (CCAppIntentsExtractedEntityTransitCard)transitCard;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppIntentsExtractedEntityContent

- (CCAppIntentsExtractedEntityContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v109[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"flightReservation"];
    if (v9)
    {
      v109[0] = 0;
      v10 = [[CCAppIntentsExtractedEntityFlightReservation alloc] initWithJSONDictionary:v9 error:v109];
      v11 = v109[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v38 = 0;
LABEL_106:

        goto LABEL_107;
      }

      v9 = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"hotelReservation"];
    if (v12)
    {
      v13 = [CCAppIntentsExtractedEntityHotelReservation alloc];
      v108 = 0;
      v14 = [(CCAppIntentsExtractedEntityHotelReservation *)v13 initWithJSONDictionary:v12 error:&v108];
      v15 = v108;
      v10 = v15;
      if (!v14 || v15)
      {
        CCSetError();
        v38 = 0;
LABEL_105:

        goto LABEL_106;
      }

      v12 = v14;
    }

    v10 = [v6 objectForKeyedSubscript:@"restaurantReservation"];
    if (v10)
    {
      v16 = [CCAppIntentsExtractedEntityRestaurantReservation alloc];
      v107 = 0;
      v17 = [(CCAppIntentsExtractedEntityRestaurantReservation *)v16 initWithJSONDictionary:v10 error:&v107];
      v18 = v107;
      v14 = v18;
      if (!v17 || v18)
      {
        CCSetError();
        v38 = 0;
LABEL_104:

        goto LABEL_105;
      }

      v10 = v17;
    }

    v14 = [v6 objectForKeyedSubscript:@"rentalCarReservation"];
    if (v14)
    {
      v19 = [CCAppIntentsExtractedEntityRentalCarReservation alloc];
      v106 = 0;
      v20 = [(CCAppIntentsExtractedEntityRentalCarReservation *)v19 initWithJSONDictionary:v14 error:&v106];
      v21 = v106;
      v17 = v21;
      if (!v20 || v21)
      {
        CCSetError();
        v38 = 0;
LABEL_103:

        goto LABEL_104;
      }

      v14 = v20;
    }

    v17 = [v6 objectForKeyedSubscript:@"ticketedTransportation"];
    if (v17)
    {
      v95 = v14;
      v22 = self;
      v23 = [CCAppIntentsExtractedEntityTicketedTransportation alloc];
      v105 = 0;
      v24 = v17;
      v25 = [(CCAppIntentsExtractedEntityTicketedTransportation *)v23 initWithJSONDictionary:v17 error:&v105];
      v26 = v105;
      v27 = v26;
      v97 = v25;
      if (!v25 || v26)
      {
        CCSetError();
        v38 = 0;
        v20 = v27;
        v17 = v24;
        self = v22;
        v14 = v95;
LABEL_102:

        goto LABEL_103;
      }

      self = v22;
      v14 = v95;
      v17 = v25;
    }

    v28 = [v6 objectForKeyedSubscript:@"ticketedShow"];
    v94 = v17;
    if (v28)
    {
      v29 = [CCAppIntentsExtractedEntityTicketedShow alloc];
      v104 = 0;
      v30 = v28;
      v28 = [(CCAppIntentsExtractedEntityTicketedShow *)v29 initWithJSONDictionary:v28 error:&v104];
      v31 = v104;
      v96 = v28;
      if (!v28 || v31)
      {
        v97 = v31;
        CCSetError();
        v38 = 0;
        v20 = v30;
        v17 = v94;
        goto LABEL_101;
      }

      v17 = v94;
    }

    v32 = [v6 objectForKeyedSubscript:@"appointment"];
    if (!v32)
    {
      v97 = 0;
LABEL_38:
      v39 = [v6 objectForKeyedSubscript:@"party"];
      v82 = v28;
      if (v39)
      {
        v40 = v39;
        v41 = [CCAppIntentsExtractedEntityParty alloc];
        v102 = 0;
        v96 = v40;
        v42 = [(CCAppIntentsExtractedEntityParty *)v41 initWithJSONDictionary:v40 error:&v102];
        v43 = v102;
        if (!v42 || v43)
        {
          v83 = v42;
          v93 = v43;
          CCSetError();
          v38 = 0;
          v20 = v82;

LABEL_100:
          goto LABEL_101;
        }

        v96 = v42;
      }

      else
      {
        v96 = 0;
      }

      v44 = [v6 objectForKeyedSubscript:@"personalId"];
      if (v44)
      {
        v45 = v44;
        v46 = [CCAppIntentsExtractedEntityPersonalId alloc];
        v101 = 0;
        v93 = v45;
        v47 = [(CCAppIntentsExtractedEntityPersonalId *)v46 initWithJSONDictionary:v45 error:&v101];
        v48 = v101;
        if (!v47 || v48)
        {
          v80 = v47;
          v84 = v48;
          CCSetError();
          v38 = 0;
          v20 = v82;

LABEL_99:
          goto LABEL_100;
        }

        v93 = v47;
      }

      else
      {
        v93 = 0;
      }

      v49 = [v6 objectForKeyedSubscript:@"medicalInsuranceCard"];
      if (v49)
      {
        v50 = v49;
        v51 = [CCAppIntentsExtractedEntityMedicalInsuranceCard alloc];
        v100 = 0;
        v84 = v50;
        v52 = [(CCAppIntentsExtractedEntityMedicalInsuranceCard *)v51 initWithJSONDictionary:v50 error:&v100];
        v53 = v100;
        v79 = v52;
        if (!v52 || v53)
        {
          v81 = v53;
          CCSetError();
          v38 = 0;
          v20 = v82;
          goto LABEL_97;
        }

        v84 = v52;
      }

      else
      {
        v84 = 0;
      }

      v20 = v82;
      v54 = [v6 objectForKeyedSubscript:@"businessMembershipCard"];
      if (v54)
      {
        v81 = v54;
        v55 = [CCAppIntentsExtractedEntityBusinessMembershipCard alloc];
        v99 = 0;
        v85 = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)v55 initWithJSONDictionary:v81 error:&v99];
        v56 = v99;
        if (!v85 || v56)
        {
          v79 = v56;
          CCSetError();
          v38 = 0;
          v61 = v85;
          goto LABEL_96;
        }

        v81 = v85;
      }

      else
      {
        v81 = 0;
      }

      v57 = [v6 objectForKeyedSubscript:@"transitCard"];
      if (!v57)
      {
        v60 = 0;
        goto LABEL_68;
      }

      v79 = v57;
      v58 = [CCAppIntentsExtractedEntityTransitCard alloc];
      v98 = 0;
      v86 = [(CCAppIntentsExtractedEntityTransitCard *)v58 initWithJSONDictionary:v79 error:&v98];
      v59 = v98;
      if (v86 && !v59)
      {

        v60 = v86;
LABEL_68:
        v79 = v60;
        if (v9)
        {
          v62 = v9;
          v63 = 1;
        }

        else
        {
          v63 = 0;
        }

        v65 = v9;
        if (v12)
        {
          v87 = v12;

          v65 = v87;
          v63 = 2;
        }

        if (v10)
        {
          v88 = v65;
          v69 = v10;

          v63 = 3;
          v65 = v69;
        }

        if (v14)
        {
          v89 = v65;
          v70 = v14;

          v63 = 4;
          v65 = v70;
        }

        if (v17)
        {
          v90 = v65;
          v71 = v17;

          v63 = 5;
          v65 = v71;
        }

        v91 = v65;
        if (v82)
        {
          v72 = v82;

          v63 = 6;
          v91 = v72;
        }

        if (v97)
        {
          v73 = v97;

          v63 = 7;
          v91 = v73;
        }

        if (v96)
        {
          v74 = v96;

          v63 = 8;
          v91 = v74;
        }

        if (v93)
        {
          v75 = v93;

          v63 = 9;
          v91 = v75;
        }

        if (v84)
        {
          v76 = v84;

          v63 = 10;
          v91 = v76;
        }

        if (v81)
        {
          v77 = v81;

          v63 = 11;
          v91 = v77;
        }

        if (v79)
        {
          v68 = v79;

          v78 = 12;
          v91 = v68;
        }

        else
        {
          v78 = v63;
        }

        v66 = [[CCAppIntentsExtractedEntityContent alloc] initWithEntity:v91 entityType:v78 error:a4];
        v61 = v91;
        v38 = v66;
        goto LABEL_96;
      }

      v64 = v59;
      CCSetError();

      v61 = v64;
      v38 = 0;
LABEL_96:

LABEL_97:
      goto LABEL_99;
    }

    v33 = v28;
    v34 = v32;
    v35 = [CCAppIntentsExtractedEntityAppointment alloc];
    v103 = 0;
    v97 = v34;
    v36 = [(CCAppIntentsExtractedEntityAppointment *)v35 initWithJSONDictionary:v34 error:&v103];
    v37 = v103;
    if (v36 && !v37)
    {

      v97 = v36;
      v28 = v33;
      v17 = v94;
      goto LABEL_38;
    }

    v92 = v36;
    v96 = v37;
    CCSetError();
    v38 = 0;
    v20 = v33;
    v17 = v94;

LABEL_101:
    goto LABEL_102;
  }

  CCSetError();
  v38 = 0;
LABEL_107:

  return v38;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  entityType = self->_entityType;
  if (entityType == 1)
  {
    if (!self->_flightReservation)
    {
      goto LABEL_37;
    }

    v5 = [(CCAppIntentsExtractedEntityContent *)self flightReservation];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"flightReservation"];

    entityType = self->_entityType;
  }

  if (entityType == 2)
  {
    if (!self->_hotelReservation)
    {
      goto LABEL_37;
    }

    v7 = [(CCAppIntentsExtractedEntityContent *)self hotelReservation];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"hotelReservation"];

    entityType = self->_entityType;
  }

  if (entityType == 3)
  {
    if (!self->_restaurantReservation)
    {
      goto LABEL_37;
    }

    v9 = [(CCAppIntentsExtractedEntityContent *)self restaurantReservation];
    v10 = [v9 jsonDictionary];
    [v3 setObject:v10 forKeyedSubscript:@"restaurantReservation"];

    entityType = self->_entityType;
  }

  if (entityType == 4)
  {
    if (!self->_rentalCarReservation)
    {
      goto LABEL_37;
    }

    v11 = [(CCAppIntentsExtractedEntityContent *)self rentalCarReservation];
    v12 = [v11 jsonDictionary];
    [v3 setObject:v12 forKeyedSubscript:@"rentalCarReservation"];

    entityType = self->_entityType;
  }

  if (entityType == 5)
  {
    if (!self->_ticketedTransportation)
    {
      goto LABEL_37;
    }

    v13 = [(CCAppIntentsExtractedEntityContent *)self ticketedTransportation];
    v14 = [v13 jsonDictionary];
    [v3 setObject:v14 forKeyedSubscript:@"ticketedTransportation"];

    entityType = self->_entityType;
  }

  if (entityType == 6)
  {
    if (!self->_ticketedShow)
    {
      goto LABEL_37;
    }

    v15 = [(CCAppIntentsExtractedEntityContent *)self ticketedShow];
    v16 = [v15 jsonDictionary];
    [v3 setObject:v16 forKeyedSubscript:@"ticketedShow"];

    entityType = self->_entityType;
  }

  if (entityType == 7)
  {
    if (!self->_appointment)
    {
      goto LABEL_37;
    }

    v17 = [(CCAppIntentsExtractedEntityContent *)self appointment];
    v18 = [v17 jsonDictionary];
    [v3 setObject:v18 forKeyedSubscript:@"appointment"];

    entityType = self->_entityType;
  }

  if (entityType == 8)
  {
    if (!self->_party)
    {
      goto LABEL_37;
    }

    v19 = [(CCAppIntentsExtractedEntityContent *)self party];
    v20 = [v19 jsonDictionary];
    [v3 setObject:v20 forKeyedSubscript:@"party"];

    entityType = self->_entityType;
  }

  if (entityType == 9)
  {
    if (!self->_personalId)
    {
      goto LABEL_37;
    }

    v21 = [(CCAppIntentsExtractedEntityContent *)self personalId];
    v22 = [v21 jsonDictionary];
    [v3 setObject:v22 forKeyedSubscript:@"personalId"];

    entityType = self->_entityType;
  }

  if (entityType == 10)
  {
    if (!self->_medicalInsuranceCard)
    {
      goto LABEL_37;
    }

    v23 = [(CCAppIntentsExtractedEntityContent *)self medicalInsuranceCard];
    v24 = [v23 jsonDictionary];
    [v3 setObject:v24 forKeyedSubscript:@"medicalInsuranceCard"];

    entityType = self->_entityType;
  }

  if (entityType == 11)
  {
    if (!self->_businessMembershipCard)
    {
      goto LABEL_37;
    }

    v25 = [(CCAppIntentsExtractedEntityContent *)self businessMembershipCard];
    v26 = [v25 jsonDictionary];
    [v3 setObject:v26 forKeyedSubscript:@"businessMembershipCard"];

    entityType = self->_entityType;
  }

  if (entityType == 12 && self->_transitCard)
  {
    v27 = [(CCAppIntentsExtractedEntityContent *)self transitCard];
    v28 = [v27 jsonDictionary];
    [v3 setObject:v28 forKeyedSubscript:@"transitCard"];
  }

LABEL_37:
  v29 = [v3 copy];

  return v29;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v18 = a3;
  if (self->_flightReservation)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27326 subMessageValue:self->_flightReservation];
    v18[2](v18, v5);
  }

  if (self->_hotelReservation)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27363 subMessageValue:self->_hotelReservation];
    v18[2](v18, v6);
  }

  if (self->_restaurantReservation)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27381 subMessageValue:self->_restaurantReservation];
    v18[2](v18, v7);
  }

  if (self->_rentalCarReservation)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27393 subMessageValue:self->_rentalCarReservation];
    v18[2](v18, v8);
  }

  if (self->_ticketedTransportation)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27413 subMessageValue:self->_ticketedTransportation];
    v18[2](v18, v9);
  }

  if (self->_ticketedShow)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27427 subMessageValue:self->_ticketedShow];
    v18[2](v18, v10);
  }

  if (self->_appointment)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27445 subMessageValue:self->_appointment];
    v18[2](v18, v11);
  }

  if (self->_party)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27458 subMessageValue:self->_party];
    v18[2](v18, v12);
  }

  if (self->_personalId)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27468 subMessageValue:self->_personalId];
    v18[2](v18, v13);
  }

  if (self->_medicalInsuranceCard)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27483 subMessageValue:self->_medicalInsuranceCard];
    v18[2](v18, v14);
  }

  if (self->_businessMembershipCard)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27493 subMessageValue:self->_businessMembershipCard];
    v18[2](v18, v15);
  }

  v16 = v18;
  if (self->_transitCard)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27502 subMessageValue:self->_transitCard];
    v18[2](v18, v17);

    v16 = v18;
  }
}

- (CCAppIntentsExtractedEntityTransitCard)transitCard
{
  v2 = [(CCAppIntentsExtractedEntityTransitCard *)self->_transitCard copy];

  return v2;
}

- (CCAppIntentsExtractedEntityBusinessMembershipCard)businessMembershipCard
{
  v2 = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self->_businessMembershipCard copy];

  return v2;
}

- (CCAppIntentsExtractedEntityMedicalInsuranceCard)medicalInsuranceCard
{
  v2 = [(CCAppIntentsExtractedEntityMedicalInsuranceCard *)self->_medicalInsuranceCard copy];

  return v2;
}

- (CCAppIntentsExtractedEntityPersonalId)personalId
{
  v2 = [(CCAppIntentsExtractedEntityPersonalId *)self->_personalId copy];

  return v2;
}

- (CCAppIntentsExtractedEntityParty)party
{
  v2 = [(CCAppIntentsExtractedEntityParty *)self->_party copy];

  return v2;
}

- (CCAppIntentsExtractedEntityAppointment)appointment
{
  v2 = [(CCAppIntentsExtractedEntityAppointment *)self->_appointment copy];

  return v2;
}

- (CCAppIntentsExtractedEntityTicketedShow)ticketedShow
{
  v2 = [(CCAppIntentsExtractedEntityTicketedShow *)self->_ticketedShow copy];

  return v2;
}

- (CCAppIntentsExtractedEntityTicketedTransportation)ticketedTransportation
{
  v2 = [(CCAppIntentsExtractedEntityTicketedTransportation *)self->_ticketedTransportation copy];

  return v2;
}

- (CCAppIntentsExtractedEntityRentalCarReservation)rentalCarReservation
{
  v2 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self->_rentalCarReservation copy];

  return v2;
}

- (CCAppIntentsExtractedEntityRestaurantReservation)restaurantReservation
{
  v2 = [(CCAppIntentsExtractedEntityRestaurantReservation *)self->_restaurantReservation copy];

  return v2;
}

- (CCAppIntentsExtractedEntityHotelReservation)hotelReservation
{
  v2 = [(CCAppIntentsExtractedEntityHotelReservation *)self->_hotelReservation copy];

  return v2;
}

- (CCAppIntentsExtractedEntityFlightReservation)flightReservation
{
  v2 = [(CCAppIntentsExtractedEntityFlightReservation *)self->_flightReservation copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_77;
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
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v6[*v8])
        {
          break;
        }

        v19 = *(*&v6[*v11] + v17);
        *&v6[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_78;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v22 = *&v6[*v9];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_78;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) <= 6)
      {
        if (v23 <= 3)
        {
          switch(v23)
          {
            case 1:
              v66 = [CCAppIntentsExtractedEntityFlightReservation alloc];
              v67 = CCPBReaderReadDataNoCopy();
              v169 = 0;
              v68 = [(CCItemMessage *)v66 initWithData:v67 error:&v169];
              v10 = v169;
              flightReservation = self->_flightReservation;
              self->_flightReservation = v68;

              if (v10)
              {
                goto LABEL_64;
              }

              self->_entityType = 1;
              hotelReservation = self->_hotelReservation;
              self->_hotelReservation = 0;

              break;
            case 2:
              v101 = [CCAppIntentsExtractedEntityHotelReservation alloc];
              v102 = CCPBReaderReadDataNoCopy();
              v168 = 0;
              v103 = [(CCItemMessage *)v101 initWithData:v102 error:&v168];
              v10 = v168;
              v104 = self->_hotelReservation;
              self->_hotelReservation = v103;

              if (v10)
              {
                goto LABEL_64;
              }

              v105 = self->_flightReservation;
              self->_flightReservation = 0;

              self->_entityType = 2;
              break;
            case 3:
              v24 = [CCAppIntentsExtractedEntityRestaurantReservation alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v167 = 0;
              v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v167];
              v10 = v167;
              restaurantReservation = self->_restaurantReservation;
              self->_restaurantReservation = v26;

              if (v10)
              {
                goto LABEL_64;
              }

              v28 = self->_flightReservation;
              self->_flightReservation = 0;

              v29 = self->_hotelReservation;
              self->_hotelReservation = 0;

              self->_entityType = 3;
              goto LABEL_55;
            default:
              goto LABEL_72;
          }

          v106 = self->_restaurantReservation;
          self->_restaurantReservation = 0;

LABEL_55:
          rentalCarReservation = self->_rentalCarReservation;
          self->_rentalCarReservation = 0;

LABEL_56:
          ticketedTransportation = self->_ticketedTransportation;
          self->_ticketedTransportation = 0;

LABEL_57:
          ticketedShow = self->_ticketedShow;
          self->_ticketedShow = 0;

LABEL_58:
          appointment = self->_appointment;
          self->_appointment = 0;

LABEL_59:
          party = self->_party;
          self->_party = 0;

LABEL_60:
          personalId = self->_personalId;
          self->_personalId = 0;

LABEL_61:
          medicalInsuranceCard = self->_medicalInsuranceCard;
          self->_medicalInsuranceCard = 0;

LABEL_62:
          businessMembershipCard = self->_businessMembershipCard;
          self->_businessMembershipCard = 0;

LABEL_63:
          transitCard = self->_transitCard;
          self->_transitCard = 0;

          goto LABEL_64;
        }

        if (v23 == 4)
        {
          v81 = [CCAppIntentsExtractedEntityRentalCarReservation alloc];
          v82 = CCPBReaderReadDataNoCopy();
          v166 = 0;
          v83 = [(CCItemMessage *)v81 initWithData:v82 error:&v166];
          v10 = v166;
          v84 = self->_rentalCarReservation;
          self->_rentalCarReservation = v83;

          if (v10)
          {
            goto LABEL_64;
          }

          v85 = self->_flightReservation;
          self->_flightReservation = 0;

          v86 = self->_hotelReservation;
          self->_hotelReservation = 0;

          v87 = self->_restaurantReservation;
          self->_restaurantReservation = 0;

          self->_entityType = 4;
          goto LABEL_56;
        }

        if (v23 != 5)
        {
          if (v23 == 6)
          {
            v42 = [CCAppIntentsExtractedEntityTicketedShow alloc];
            v43 = CCPBReaderReadDataNoCopy();
            v164 = 0;
            v44 = [(CCItemMessage *)v42 initWithData:v43 error:&v164];
            v10 = v164;
            v45 = self->_ticketedShow;
            self->_ticketedShow = v44;

            if (v10)
            {
              goto LABEL_64;
            }

            v46 = self->_flightReservation;
            self->_flightReservation = 0;

            v47 = self->_hotelReservation;
            self->_hotelReservation = 0;

            v48 = self->_restaurantReservation;
            self->_restaurantReservation = 0;

            v49 = self->_rentalCarReservation;
            self->_rentalCarReservation = 0;

            v50 = self->_ticketedTransportation;
            self->_ticketedTransportation = 0;

            self->_entityType = 6;
            goto LABEL_58;
          }

          goto LABEL_72;
        }

        v127 = [CCAppIntentsExtractedEntityTicketedTransportation alloc];
        v128 = CCPBReaderReadDataNoCopy();
        v165 = 0;
        v129 = [(CCItemMessage *)v127 initWithData:v128 error:&v165];
        v10 = v165;
        v130 = self->_ticketedTransportation;
        self->_ticketedTransportation = v129;

        if (!v10)
        {
          v131 = self->_flightReservation;
          self->_flightReservation = 0;

          v132 = self->_hotelReservation;
          self->_hotelReservation = 0;

          v133 = self->_restaurantReservation;
          self->_restaurantReservation = 0;

          v134 = self->_rentalCarReservation;
          self->_rentalCarReservation = 0;

          self->_entityType = 5;
          goto LABEL_57;
        }

LABEL_64:
        if (*&v6[*v7] < *&v6[*v8])
        {
          continue;
        }

        break;
      }

      if (v23 > 9)
      {
        switch(v23)
        {
          case 0xA:
            v88 = [CCAppIntentsExtractedEntityMedicalInsuranceCard alloc];
            v89 = CCPBReaderReadDataNoCopy();
            v160 = 0;
            v90 = [(CCItemMessage *)v88 initWithData:v89 error:&v160];
            v10 = v160;
            v91 = self->_medicalInsuranceCard;
            self->_medicalInsuranceCard = v90;

            if (v10)
            {
              goto LABEL_64;
            }

            v92 = self->_flightReservation;
            self->_flightReservation = 0;

            v93 = self->_hotelReservation;
            self->_hotelReservation = 0;

            v94 = self->_restaurantReservation;
            self->_restaurantReservation = 0;

            v95 = self->_rentalCarReservation;
            self->_rentalCarReservation = 0;

            v96 = self->_ticketedTransportation;
            self->_ticketedTransportation = 0;

            v97 = self->_ticketedShow;
            self->_ticketedShow = 0;

            v98 = self->_appointment;
            self->_appointment = 0;

            v99 = self->_party;
            self->_party = 0;

            v100 = self->_personalId;
            self->_personalId = 0;

            self->_entityType = 10;
            goto LABEL_62;
          case 0xB:
            v135 = [CCAppIntentsExtractedEntityBusinessMembershipCard alloc];
            v136 = CCPBReaderReadDataNoCopy();
            v159 = 0;
            v137 = [(CCItemMessage *)v135 initWithData:v136 error:&v159];
            v10 = v159;
            v138 = self->_businessMembershipCard;
            self->_businessMembershipCard = v137;

            if (!v10)
            {
              v139 = self->_flightReservation;
              self->_flightReservation = 0;

              v140 = self->_hotelReservation;
              self->_hotelReservation = 0;

              v141 = self->_restaurantReservation;
              self->_restaurantReservation = 0;

              v142 = self->_rentalCarReservation;
              self->_rentalCarReservation = 0;

              v143 = self->_ticketedTransportation;
              self->_ticketedTransportation = 0;

              v144 = self->_ticketedShow;
              self->_ticketedShow = 0;

              v145 = self->_appointment;
              self->_appointment = 0;

              v146 = self->_party;
              self->_party = 0;

              v147 = self->_personalId;
              self->_personalId = 0;

              v148 = self->_medicalInsuranceCard;
              self->_medicalInsuranceCard = 0;

              self->_entityType = 11;
              goto LABEL_63;
            }

            goto LABEL_64;
          case 0xC:
            v51 = [CCAppIntentsExtractedEntityTransitCard alloc];
            v52 = CCPBReaderReadDataNoCopy();
            v158 = 0;
            v53 = [(CCItemMessage *)v51 initWithData:v52 error:&v158];
            v10 = v158;
            v54 = self->_transitCard;
            self->_transitCard = v53;

            if (!v10)
            {
              v55 = self->_flightReservation;
              self->_flightReservation = 0;

              v56 = self->_hotelReservation;
              self->_hotelReservation = 0;

              v57 = self->_restaurantReservation;
              self->_restaurantReservation = 0;

              v58 = self->_rentalCarReservation;
              self->_rentalCarReservation = 0;

              v59 = self->_ticketedTransportation;
              self->_ticketedTransportation = 0;

              v60 = self->_ticketedShow;
              self->_ticketedShow = 0;

              v61 = self->_appointment;
              self->_appointment = 0;

              v62 = self->_party;
              self->_party = 0;

              v63 = self->_personalId;
              self->_personalId = 0;

              v64 = self->_medicalInsuranceCard;
              self->_medicalInsuranceCard = 0;

              v65 = self->_businessMembershipCard;
              self->_businessMembershipCard = 0;

              self->_entityType = 12;
            }

            goto LABEL_64;
        }
      }

      else
      {
        switch(v23)
        {
          case 7:
            v71 = [CCAppIntentsExtractedEntityAppointment alloc];
            v72 = CCPBReaderReadDataNoCopy();
            v163 = 0;
            v73 = [(CCItemMessage *)v71 initWithData:v72 error:&v163];
            v10 = v163;
            v74 = self->_appointment;
            self->_appointment = v73;

            if (v10)
            {
              goto LABEL_64;
            }

            v75 = self->_flightReservation;
            self->_flightReservation = 0;

            v76 = self->_hotelReservation;
            self->_hotelReservation = 0;

            v77 = self->_restaurantReservation;
            self->_restaurantReservation = 0;

            v78 = self->_rentalCarReservation;
            self->_rentalCarReservation = 0;

            v79 = self->_ticketedTransportation;
            self->_ticketedTransportation = 0;

            v80 = self->_ticketedShow;
            self->_ticketedShow = 0;

            self->_entityType = 7;
            goto LABEL_59;
          case 8:
            v116 = [CCAppIntentsExtractedEntityParty alloc];
            v117 = CCPBReaderReadDataNoCopy();
            v162 = 0;
            v118 = [(CCItemMessage *)v116 initWithData:v117 error:&v162];
            v10 = v162;
            v119 = self->_party;
            self->_party = v118;

            if (!v10)
            {
              v120 = self->_flightReservation;
              self->_flightReservation = 0;

              v121 = self->_hotelReservation;
              self->_hotelReservation = 0;

              v122 = self->_restaurantReservation;
              self->_restaurantReservation = 0;

              v123 = self->_rentalCarReservation;
              self->_rentalCarReservation = 0;

              v124 = self->_ticketedTransportation;
              self->_ticketedTransportation = 0;

              v125 = self->_ticketedShow;
              self->_ticketedShow = 0;

              v126 = self->_appointment;
              self->_appointment = 0;

              self->_entityType = 8;
              goto LABEL_60;
            }

            goto LABEL_64;
          case 9:
            v30 = [CCAppIntentsExtractedEntityPersonalId alloc];
            v31 = CCPBReaderReadDataNoCopy();
            v161 = 0;
            v32 = [(CCItemMessage *)v30 initWithData:v31 error:&v161];
            v10 = v161;
            v33 = self->_personalId;
            self->_personalId = v32;

            if (v10)
            {
              goto LABEL_64;
            }

            v34 = self->_flightReservation;
            self->_flightReservation = 0;

            v35 = self->_hotelReservation;
            self->_hotelReservation = 0;

            v36 = self->_restaurantReservation;
            self->_restaurantReservation = 0;

            v37 = self->_rentalCarReservation;
            self->_rentalCarReservation = 0;

            v38 = self->_ticketedTransportation;
            self->_ticketedTransportation = 0;

            v39 = self->_ticketedShow;
            self->_ticketedShow = 0;

            v40 = self->_appointment;
            self->_appointment = 0;

            v41 = self->_party;
            self->_party = 0;

            self->_entityType = 9;
            goto LABEL_61;
        }
      }

LABEL_72:
      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
      }

      else
      {
        v149 = objc_opt_class();
        v150 = NSStringFromClass(v149);
        v151 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
      }

      goto LABEL_64;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_79;
  }

LABEL_77:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v156 = 1;
    goto LABEL_81;
  }

LABEL_78:
  v152 = objc_opt_class();
  v153 = NSStringFromClass(v152);
  v154 = *&v6[*v9];
  v155 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_79:
  v156 = 0;
LABEL_81:

  return v156;
}

- (CCAppIntentsExtractedEntityContent)initWithEntity:(id)a3 entityType:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  if (v8 && a4 == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      goto LABEL_48;
    }

LABEL_50:
    CCSetError();
    v25 = 0;
    goto LABEL_51;
  }

  if (v8 && a4 == 2)
  {
    objc_opt_class();
    v12 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v12)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 3)
  {
    objc_opt_class();
    v13 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v13)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 4)
  {
    objc_opt_class();
    v14 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v14)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 5)
  {
    objc_opt_class();
    v15 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v15)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 6)
  {
    objc_opt_class();
    v16 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v16)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 7)
  {
    objc_opt_class();
    v17 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v17)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 8)
  {
    objc_opt_class();
    v18 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v18)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 9)
  {
    objc_opt_class();
    v19 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v19)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 10)
  {
    objc_opt_class();
    v20 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v20)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 11)
  {
    objc_opt_class();
    v21 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v21)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  v11 = 0;
  if (!v8 || a4 != 12)
  {
    goto LABEL_49;
  }

  objc_opt_class();
  v27 = 0;
  v22 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if ((v22 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_48:
  v23 = [v8 data];
  CCPBDataWriterWriteDataField();

LABEL_49:
  v24 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v24 error:a5];

  v25 = self;
LABEL_51:

  return v25;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 - 27325) > 0xB8)
  {
    return 0;
  }

  else
  {
    return off_1E73E7E98[(a3 - 27325)];
  }
}

@end