@interface PKPassUpcomingPassInformationEntryContentEvent
- (BOOL)isEqualToContent:(id)a3;
- (BOOL)populateFromDictionary:(id)a3 bundle:(id)a4;
- (PKPassUpcomingPassInformationEntryContentEvent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpcomingPassInformationEntryContentEvent

- (BOOL)populateFromDictionary:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v93.receiver = self;
  v93.super_class = PKPassUpcomingPassInformationEntryContentEvent;
  if ([(PKPassUpcomingPassInformationEntryContent *)&v93 populateFromDictionary:v6 bundle:v7])
  {
    v8 = [v6 PKDictionaryForKey:@"URLs"];
    v9 = v8;
    if (!v8)
    {
LABEL_53:
      v63 = [v6 PKDictionaryForKey:@"images"];
      v62 = v63;
      if (v63)
      {
        v64 = [v63 PKDictionaryForKey:@"venueMap"];
        if (v64)
        {
          v65 = [PKPassUpcomingPassInformationImageManifest createFromDictionary:v64 bundle:v7 imageName:@"venueMap" reuseAllowed:1];
          venueMapImageManifest = self->_venueMapImageManifest;
          self->_venueMapImageManifest = v65;

          if (!self->_venueMapImageManifest)
          {

            v61 = 0;
            goto LABEL_58;
          }
        }
      }

      v61 = 1;
LABEL_58:

LABEL_59:
      goto LABEL_60;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__PKPassUpcomingPassInformationEntryContentEvent_populateFromDictionary_bundle___block_invoke;
    aBlock[3] = &unk_1E79D9800;
    v10 = v8;
    v92 = v10;
    v11 = _Block_copy(aBlock);
    v12 = v11[2];
    v90 = 0;
    v13 = v12(v11, @"sellURL", &v90);
    v14 = v90;
    v15 = v90;
    if (v13)
    {
      v78 = v15;
      objc_storeStrong(&self->_sellURL, v14);
      v89 = 0;
      v16 = (v11[2])(v11, @"transferURL", &v89);
      v17 = v89;
      v18 = v89;
      if (v16)
      {
        objc_storeStrong(&self->_transferURL, v17);
        v88 = 0;
        v19 = (v11[2])(v11, @"bagPolicyURL", &v88);
        v20 = v88;
        v21 = v88;
        if (v19)
        {
          v77 = v21;
          objc_storeStrong(&self->_bagPolicyURL, v20);
          v87 = 0;
          v22 = (v11[2])(v11, @"orderFoodURL", &v87);
          v23 = v87;
          v24 = v87;
          if (v22)
          {
            v76 = v24;
            objc_storeStrong(&self->_orderFoodURL, v23);
            v86 = 0;
            v25 = (v11[2])(v11, @"transitInformationURL", &v86);
            v26 = v86;
            v27 = v86;
            if (v25)
            {
              v75 = v27;
              objc_storeStrong(&self->_transitInformationURL, v26);
              v85 = 0;
              v28 = (v11[2])(v11, @"parkingInformationURL", &v85);
              v29 = v85;
              v30 = v85;
              if (v28)
              {
                v74 = v30;
                objc_storeStrong(&self->_parkingInformationURL, v29);
                v84 = 0;
                v31 = (v11[2])(v11, @"directionsInformationURL", &v84);
                v32 = v84;
                v33 = v84;
                if (v31)
                {
                  v73 = v33;
                  objc_storeStrong(&self->_directionsInformationURL, v32);
                  v83 = 0;
                  v34 = (v11[2])(v11, @"merchandiseURL", &v83);
                  v35 = v83;
                  v36 = v83;
                  if (!v34)
                  {
                    v60 = 0;
                    goto LABEL_52;
                  }

                  v72 = v36;
                  objc_storeStrong(&self->_merchandiseURL, v35);
                  v82 = 0;
                  v37 = (v11[2])(v11, @"accessibilityURL", &v82);
                  v38 = v82;
                  v39 = v82;
                  if (!v37)
                  {
                    v60 = 0;
LABEL_51:

                    v36 = v72;
LABEL_52:

                    if (!v60)
                    {
                      v61 = 0;
                      goto LABEL_59;
                    }

                    goto LABEL_53;
                  }

                  v71 = v39;
                  objc_storeStrong(&self->_accessibilityURL, v38);
                  v81 = 0;
                  v40 = (v11[2])(v11, @"purchaseParkingURL", &v81);
                  v41 = v81;
                  v42 = v81;
                  if (!v40)
                  {
                    v60 = 0;
LABEL_50:

                    v39 = v71;
                    goto LABEL_51;
                  }

                  v70 = v42;
                  objc_storeStrong(&self->_purchaseParkingURL, v41);
                  v80 = 0;
                  v43 = (v11[2])(v11, @"addOnURL", &v80);
                  v44 = v80;
                  v45 = v80;
                  if (!v43)
                  {
                    v60 = 0;
LABEL_49:

                    v42 = v70;
                    goto LABEL_50;
                  }

                  v69 = v45;
                  objc_storeStrong(&self->_partnerAddOnURL, v44);
                  v79 = 0;
                  v46 = (v11[2])(v11, @"contactVenueWebsite", &v79);
                  v47 = v79;
                  v48 = v79;
                  if (!v46)
                  {
                    v60 = 0;
LABEL_48:

                    v45 = v69;
                    goto LABEL_49;
                  }

                  v68 = v48;
                  objc_storeStrong(&self->_venueWebsiteURL, v47);
                  v49 = [v10 PKStringForKey:@"contactVenueEmail"];
                  v50 = v49;
                  if (v49)
                  {
                    v51 = [v49 length];

                    if (!v51 || ([v50 hasPrefix:@"mailto:"] & 1) != 0 || (objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"mailto:%@", v50), v52 = objc_claimAutoreleasedReturnValue(), v50, (v50 = v52) != 0))
                    {
                      v53 = [MEMORY[0x1E695DFF8] URLWithString:v50];
                      if (!v53)
                      {
                        v60 = 0;
LABEL_47:

                        v48 = v68;
                        goto LABEL_48;
                      }

                      venueEmailURL = self->_venueEmailURL;
                      self->_venueEmailURL = v53;
                    }
                  }

                  v55 = [v10 PKStringForKey:@"contactVenuePhoneNumber"];
                  v56 = v55;
                  if (!v55)
                  {
                    goto LABEL_25;
                  }

                  v57 = [(NSURL *)v55 length];

                  if (v57 && ([(NSURL *)v56 hasPrefix:@"tel:"]& 1) == 0)
                  {
                    v55 = PKTelephoneURLFromPhoneNumber(v56);
                    if (v55)
                    {
                      goto LABEL_25;
                    }
                  }

                  else
                  {
                    v55 = [MEMORY[0x1E695DFF8] URLWithString:v56];
                    if (v55)
                    {
LABEL_25:
                      venuePhoneNumberURL = self->_venuePhoneNumberURL;
                      self->_venuePhoneNumberURL = v55;
                      v59 = v55;

                      v60 = 1;
LABEL_46:

                      goto LABEL_47;
                    }
                  }

                  v60 = 0;
                  goto LABEL_46;
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }

    v61 = 0;
    v62 = v92;
    goto LABEL_58;
  }

  v61 = 0;
LABEL_60:

  return v61;
}

BOOL __80__PKPassUpcomingPassInformationEntryContentEvent_populateFromDictionary_bundle___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [*(a1 + 32) PKStringForKey:a2];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    v6 = v5 != 0;
    if (v5)
    {
      v5 = v5;
      *a3 = v5;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isEqualToContent:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = PKPassUpcomingPassInformationEntryContentEvent;
  if ([(PKPassUpcomingPassInformationEntryContent *)&v39 isEqualToContent:v4])
  {
    v5 = v4;
    sellURL = self->_sellURL;
    v7 = v5[6];
    if (sellURL)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (sellURL != v7)
      {
        goto LABEL_79;
      }
    }

    else if (([(NSURL *)sellURL isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }

    transferURL = self->_transferURL;
    v11 = v5[7];
    if (transferURL)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (transferURL != v11)
      {
        goto LABEL_79;
      }
    }

    else if (([(NSURL *)transferURL isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }

    bagPolicyURL = self->_bagPolicyURL;
    v14 = v5[8];
    if (bagPolicyURL)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (bagPolicyURL != v14)
      {
        goto LABEL_79;
      }
    }

    else if (([(NSURL *)bagPolicyURL isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }

    orderFoodURL = self->_orderFoodURL;
    v17 = v5[9];
    if (orderFoodURL && v17)
    {
      if (([(NSURL *)orderFoodURL isEqual:?]& 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (orderFoodURL != v17)
    {
      goto LABEL_79;
    }

    transitInformationURL = self->_transitInformationURL;
    v19 = v5[10];
    if (transitInformationURL && v19)
    {
      if (([(NSURL *)transitInformationURL isEqual:?]& 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (transitInformationURL != v19)
    {
      goto LABEL_79;
    }

    parkingInformationURL = self->_parkingInformationURL;
    v21 = v5[11];
    if (parkingInformationURL && v21)
    {
      if (([(NSURL *)parkingInformationURL isEqual:?]& 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (parkingInformationURL != v21)
    {
      goto LABEL_79;
    }

    directionsInformationURL = self->_directionsInformationURL;
    v23 = v5[12];
    if (directionsInformationURL && v23)
    {
      if (([(NSURL *)directionsInformationURL isEqual:?]& 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (directionsInformationURL != v23)
    {
      goto LABEL_79;
    }

    merchandiseURL = self->_merchandiseURL;
    v25 = v5[13];
    if (merchandiseURL && v25)
    {
      if (([(NSURL *)merchandiseURL isEqual:?]& 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (merchandiseURL != v25)
    {
      goto LABEL_79;
    }

    accessibilityURL = self->_accessibilityURL;
    v27 = v5[14];
    if (accessibilityURL && v27)
    {
      if (([(NSURL *)accessibilityURL isEqual:?]& 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (accessibilityURL != v27)
    {
      goto LABEL_79;
    }

    purchaseParkingURL = self->_purchaseParkingURL;
    v29 = v5[15];
    if (purchaseParkingURL && v29)
    {
      if (([(NSURL *)purchaseParkingURL isEqual:?]& 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (purchaseParkingURL != v29)
    {
      goto LABEL_79;
    }

    partnerAddOnURL = self->_partnerAddOnURL;
    v31 = v5[16];
    if (partnerAddOnURL && v31)
    {
      if (([(NSURL *)partnerAddOnURL isEqual:?]& 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (partnerAddOnURL != v31)
    {
      goto LABEL_79;
    }

    venueEmailURL = self->_venueEmailURL;
    v33 = v5[17];
    if (venueEmailURL && v33)
    {
      if (([(NSURL *)venueEmailURL isEqual:?]& 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (venueEmailURL != v33)
    {
      goto LABEL_79;
    }

    venuePhoneNumberURL = self->_venuePhoneNumberURL;
    v35 = v5[18];
    if (venuePhoneNumberURL && v35)
    {
      if (([(NSURL *)venuePhoneNumberURL isEqual:?]& 1) != 0)
      {
LABEL_75:
        venueWebsiteURL = self->_venueWebsiteURL;
        v37 = v5[19];
        if (venueWebsiteURL && v37)
        {
          v9 = [(NSURL *)venueWebsiteURL isEqual:?];
        }

        else
        {
          v9 = venueWebsiteURL == v37;
        }

        goto LABEL_80;
      }
    }

    else if (venuePhoneNumberURL == v35)
    {
      goto LABEL_75;
    }

LABEL_79:
    v9 = 0;
LABEL_80:

    goto LABEL_81;
  }

  v9 = 0;
LABEL_81:

  return v9;
}

- (PKPassUpcomingPassInformationEntryContentEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PKPassUpcomingPassInformationEntryContentEvent;
  v5 = [(PKPassUpcomingPassInformationEntryContent *)&v37 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sellURL"];
    sellURL = v5->_sellURL;
    v5->_sellURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferURL"];
    transferURL = v5->_transferURL;
    v5->_transferURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bagPolicyURL"];
    bagPolicyURL = v5->_bagPolicyURL;
    v5->_bagPolicyURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"orderFoodURL"];
    orderFoodURL = v5->_orderFoodURL;
    v5->_orderFoodURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transitInformationURL"];
    transitInformationURL = v5->_transitInformationURL;
    v5->_transitInformationURL = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parkingInformationURL"];
    parkingInformationURL = v5->_parkingInformationURL;
    v5->_parkingInformationURL = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"directionsInformationURL"];
    directionsInformationURL = v5->_directionsInformationURL;
    v5->_directionsInformationURL = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchandiseURL"];
    merchandiseURL = v5->_merchandiseURL;
    v5->_merchandiseURL = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityURL"];
    accessibilityURL = v5->_accessibilityURL;
    v5->_accessibilityURL = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchaseParkingURL"];
    purchaseParkingURL = v5->_purchaseParkingURL;
    v5->_purchaseParkingURL = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partnerAddOnURL"];
    partnerAddOnURL = v5->_partnerAddOnURL;
    v5->_partnerAddOnURL = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"venueEmailURL"];
    venueEmailURL = v5->_venueEmailURL;
    v5->_venueEmailURL = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"venuePhoneNumberURL"];
    venuePhoneNumberURL = v5->_venuePhoneNumberURL;
    v5->_venuePhoneNumberURL = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"venueWebsiteURL"];
    venueWebsiteURL = v5->_venueWebsiteURL;
    v5->_venueWebsiteURL = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"venueMapManifest"];
    venueMapImageManifest = v5->_venueMapImageManifest;
    v5->_venueMapImageManifest = v34;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassUpcomingPassInformationEntryContentEvent;
  v4 = a3;
  [(PKPassUpcomingPassInformationEntryContent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sellURL forKey:{@"sellURL", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_transferURL forKey:@"transferURL"];
  [v4 encodeObject:self->_bagPolicyURL forKey:@"bagPolicyURL"];
  [v4 encodeObject:self->_orderFoodURL forKey:@"orderFoodURL"];
  [v4 encodeObject:self->_transitInformationURL forKey:@"transitInformationURL"];
  [v4 encodeObject:self->_parkingInformationURL forKey:@"parkingInformationURL"];
  [v4 encodeObject:self->_directionsInformationURL forKey:@"directionsInformationURL"];
  [v4 encodeObject:self->_merchandiseURL forKey:@"merchandiseURL"];
  [v4 encodeObject:self->_accessibilityURL forKey:@"accessibilityURL"];
  [v4 encodeObject:self->_purchaseParkingURL forKey:@"purchaseParkingURL"];
  [v4 encodeObject:self->_partnerAddOnURL forKey:@"partnerAddOnURL"];
  [v4 encodeObject:self->_venueEmailURL forKey:@"venueEmailURL"];
  [v4 encodeObject:self->_venuePhoneNumberURL forKey:@"venuePhoneNumberURL"];
  [v4 encodeObject:self->_venueWebsiteURL forKey:@"venueWebsiteURL"];
  [v4 encodeObject:self->_venueMapImageManifest forKey:@"venueMapManifest"];
}

@end