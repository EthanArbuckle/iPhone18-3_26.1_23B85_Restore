@interface DAContactSearchResultElement
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDAContactSearchResultElement:(id)element;
- (DAContactSearchResultElement)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAContactSearchResultElement

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  firstName = [(DAContactSearchResultElement *)self firstName];
  lastName = [(DAContactSearchResultElement *)self lastName];
  displayName = [(DAContactSearchResultElement *)self displayName];
  emailAddress = [(DAContactSearchResultElement *)self emailAddress];
  v9 = [v3 stringWithFormat:@"<%@ %p> %@ %@ (%@): %@", v4, self, firstName, lastName, displayName, emailAddress];

  return v9;
}

- (BOOL)isEqualToDAContactSearchResultElement:(id)element
{
  elementCopy = element;
  if (elementCopy == self)
  {
    goto LABEL_69;
  }

  firstName = [(DAContactSearchResultElement *)self firstName];
  if (firstName)
  {
    v6 = firstName;
    firstName2 = [(DAContactSearchResultElement *)self firstName];
    firstName3 = [(DAContactSearchResultElement *)elementCopy firstName];
    v9 = [firstName2 isEqualToString:firstName3];

    if (!v9)
    {
      goto LABEL_68;
    }
  }

  lastName = [(DAContactSearchResultElement *)self lastName];
  if (lastName)
  {
    v11 = lastName;
    lastName2 = [(DAContactSearchResultElement *)self lastName];
    lastName3 = [(DAContactSearchResultElement *)elementCopy lastName];
    v14 = [lastName2 isEqualToString:lastName3];

    if (!v14)
    {
      goto LABEL_68;
    }
  }

  emailAddress = [(DAContactSearchResultElement *)self emailAddress];
  if (emailAddress)
  {
    v16 = emailAddress;
    emailAddress2 = [(DAContactSearchResultElement *)self emailAddress];
    emailAddress3 = [(DAContactSearchResultElement *)elementCopy emailAddress];
    v19 = [emailAddress2 isEqualToString:emailAddress3];

    if (!v19)
    {
      goto LABEL_68;
    }
  }

  workPhone = [(DAContactSearchResultElement *)self workPhone];
  if (workPhone)
  {
    v21 = workPhone;
    workPhone2 = [(DAContactSearchResultElement *)self workPhone];
    workPhone3 = [(DAContactSearchResultElement *)elementCopy workPhone];
    v24 = [workPhone2 isEqualToString:workPhone3];

    if (!v24)
    {
      goto LABEL_68;
    }
  }

  mobilePhone = [(DAContactSearchResultElement *)self mobilePhone];
  if (mobilePhone)
  {
    v26 = mobilePhone;
    mobilePhone2 = [(DAContactSearchResultElement *)self mobilePhone];
    mobilePhone3 = [(DAContactSearchResultElement *)elementCopy mobilePhone];
    v29 = [mobilePhone2 isEqualToString:mobilePhone3];

    if (!v29)
    {
      goto LABEL_68;
    }
  }

  company = [(DAContactSearchResultElement *)self company];
  if (company)
  {
    v31 = company;
    company2 = [(DAContactSearchResultElement *)self company];
    company3 = [(DAContactSearchResultElement *)elementCopy company];
    v34 = [company2 isEqualToString:company3];

    if (!v34)
    {
      goto LABEL_68;
    }
  }

  title = [(DAContactSearchResultElement *)self title];
  if (title)
  {
    v36 = title;
    title2 = [(DAContactSearchResultElement *)self title];
    title3 = [(DAContactSearchResultElement *)elementCopy title];
    v39 = [title2 isEqualToString:title3];

    if (!v39)
    {
      goto LABEL_68;
    }
  }

  alias = [(DAContactSearchResultElement *)self alias];
  if (alias)
  {
    v41 = alias;
    alias2 = [(DAContactSearchResultElement *)self alias];
    alias3 = [(DAContactSearchResultElement *)elementCopy alias];
    v44 = [alias2 isEqualToString:alias3];

    if (!v44)
    {
      goto LABEL_68;
    }
  }

  homePhone = [(DAContactSearchResultElement *)self homePhone];
  if (homePhone)
  {
    v46 = homePhone;
    homePhone2 = [(DAContactSearchResultElement *)self homePhone];
    homePhone3 = [(DAContactSearchResultElement *)elementCopy homePhone];
    v49 = [homePhone2 isEqualToString:homePhone3];

    if (!v49)
    {
      goto LABEL_68;
    }
  }

  office = [(DAContactSearchResultElement *)self office];
  if (office)
  {
    v51 = office;
    office2 = [(DAContactSearchResultElement *)self office];
    office3 = [(DAContactSearchResultElement *)elementCopy office];
    v54 = [office2 isEqualToString:office3];

    if (!v54)
    {
      goto LABEL_68;
    }
  }

  serverSource = [(DAContactSearchResultElement *)self serverSource];
  if (serverSource)
  {
    v56 = serverSource;
    serverSource2 = [(DAContactSearchResultElement *)self serverSource];
    serverSource3 = [(DAContactSearchResultElement *)elementCopy serverSource];
    v59 = [serverSource2 isEqualToString:serverSource3];

    if (!v59)
    {
      goto LABEL_68;
    }
  }

  recordName = [(DAContactSearchResultElement *)self recordName];
  if (recordName)
  {
    v61 = recordName;
    recordName2 = [(DAContactSearchResultElement *)self recordName];
    recordName3 = [(DAContactSearchResultElement *)elementCopy recordName];
    v64 = [recordName2 isEqualToString:recordName3];

    if (!v64)
    {
      goto LABEL_68;
    }
  }

  faxPhone = [(DAContactSearchResultElement *)self faxPhone];
  if (faxPhone)
  {
    v66 = faxPhone;
    faxPhone2 = [(DAContactSearchResultElement *)self faxPhone];
    faxPhone3 = [(DAContactSearchResultElement *)elementCopy faxPhone];
    v69 = [faxPhone2 isEqualToString:faxPhone3];

    if (!v69)
    {
      goto LABEL_68;
    }
  }

  department = [(DAContactSearchResultElement *)self department];
  if (department)
  {
    v71 = department;
    department2 = [(DAContactSearchResultElement *)self department];
    department3 = [(DAContactSearchResultElement *)elementCopy department];
    v74 = [department2 isEqualToString:department3];

    if (!v74)
    {
      goto LABEL_68;
    }
  }

  street = [(DAContactSearchResultElement *)self street];
  if (street)
  {
    v76 = street;
    street2 = [(DAContactSearchResultElement *)self street];
    street3 = [(DAContactSearchResultElement *)elementCopy street];
    v79 = [street2 isEqualToString:street3];

    if (!v79)
    {
      goto LABEL_68;
    }
  }

  city = [(DAContactSearchResultElement *)self city];
  if (city)
  {
    v81 = city;
    city2 = [(DAContactSearchResultElement *)self city];
    city3 = [(DAContactSearchResultElement *)elementCopy city];
    v84 = [city2 isEqualToString:city3];

    if (!v84)
    {
      goto LABEL_68;
    }
  }

  state = [(DAContactSearchResultElement *)self state];
  if (state)
  {
    v86 = state;
    state2 = [(DAContactSearchResultElement *)self state];
    state3 = [(DAContactSearchResultElement *)elementCopy state];
    v89 = [state2 isEqualToString:state3];

    if (!v89)
    {
      goto LABEL_68;
    }
  }

  v90 = [(DAContactSearchResultElement *)self zip];
  if (v90)
  {
    v91 = v90;
    v92 = [(DAContactSearchResultElement *)self zip];
    v93 = [(DAContactSearchResultElement *)elementCopy zip];
    v94 = [v92 isEqualToString:v93];

    if (!v94)
    {
      goto LABEL_68;
    }
  }

  country = [(DAContactSearchResultElement *)self country];
  if (country)
  {
    v96 = country;
    country2 = [(DAContactSearchResultElement *)self country];
    country3 = [(DAContactSearchResultElement *)elementCopy country];
    v99 = [country2 isEqualToString:country3];

    if (!v99)
    {
      goto LABEL_68;
    }
  }

  jpegPhoto = [(DAContactSearchResultElement *)self jpegPhoto];
  if (jpegPhoto)
  {
    v101 = jpegPhoto;
    jpegPhoto2 = [(DAContactSearchResultElement *)self jpegPhoto];
    jpegPhoto3 = [(DAContactSearchResultElement *)elementCopy jpegPhoto];
    v104 = [jpegPhoto2 isEqualToData:jpegPhoto3];

    if (!v104)
    {
      goto LABEL_68;
    }
  }

  imService = [(DAContactSearchResultElement *)self imService];
  if (imService)
  {
    v106 = imService;
    imService2 = [(DAContactSearchResultElement *)self imService];
    imService3 = [(DAContactSearchResultElement *)elementCopy imService];
    v109 = [imService2 isEqualToString:imService3];

    if (!v109)
    {
      goto LABEL_68;
    }
  }

  imUsername = [(DAContactSearchResultElement *)self imUsername];
  if (imUsername)
  {
    v111 = imUsername;
    imUsername2 = [(DAContactSearchResultElement *)self imUsername];
    imUsername3 = [(DAContactSearchResultElement *)elementCopy imUsername];
    v114 = [imUsername2 isEqualToString:imUsername3];

    if (!v114)
    {
      goto LABEL_68;
    }
  }

  v115 = [(DAContactSearchResultElement *)self uri];
  if (v115)
  {
    v116 = v115;
    v117 = [(DAContactSearchResultElement *)self uri];
    v118 = [(DAContactSearchResultElement *)elementCopy uri];
    v119 = [v117 isEqualToString:v118];

    if (!v119)
    {
      goto LABEL_68;
    }
  }

  buildingName = [(DAContactSearchResultElement *)self buildingName];
  if (buildingName)
  {
    v121 = buildingName;
    buildingName2 = [(DAContactSearchResultElement *)self buildingName];
    buildingName3 = [(DAContactSearchResultElement *)elementCopy buildingName];
    v124 = [buildingName2 isEqualToString:buildingName3];

    if (!v124)
    {
      goto LABEL_68;
    }
  }

  appleFloor = [(DAContactSearchResultElement *)self appleFloor];
  if (appleFloor)
  {
    v126 = appleFloor;
    appleFloor2 = [(DAContactSearchResultElement *)self appleFloor];
    appleFloor3 = [(DAContactSearchResultElement *)elementCopy appleFloor];
    v129 = [appleFloor2 isEqualToString:appleFloor3];

    if (!v129)
    {
      goto LABEL_68;
    }
  }

  pagerNumber = [(DAContactSearchResultElement *)self pagerNumber];
  if (pagerNumber)
  {
    v131 = pagerNumber;
    pagerNumber2 = [(DAContactSearchResultElement *)self pagerNumber];
    pagerNumber3 = [(DAContactSearchResultElement *)elementCopy pagerNumber];
    v134 = [pagerNumber2 isEqualToString:pagerNumber3];

    if (!v134)
    {
      goto LABEL_68;
    }
  }

  postalAddress = [(DAContactSearchResultElement *)self postalAddress];
  if (postalAddress)
  {
    v136 = postalAddress;
    postalAddress2 = [(DAContactSearchResultElement *)self postalAddress];
    postalAddress3 = [(DAContactSearchResultElement *)elementCopy postalAddress];
    v139 = [postalAddress2 isEqualToString:postalAddress3];

    if (!v139)
    {
      goto LABEL_68;
    }
  }

  homePostalAddress = [(DAContactSearchResultElement *)self homePostalAddress];
  if (homePostalAddress)
  {
    v141 = homePostalAddress;
    homePostalAddress2 = [(DAContactSearchResultElement *)self homePostalAddress];
    homePostalAddress3 = [(DAContactSearchResultElement *)elementCopy homePostalAddress];
    v144 = [homePostalAddress2 isEqualToString:homePostalAddress3];

    if (!v144)
    {
      goto LABEL_68;
    }
  }

  principalPath = [(DAContactSearchResultElement *)self principalPath];
  if (principalPath)
  {
    v146 = principalPath;
    principalPath2 = [(DAContactSearchResultElement *)self principalPath];
    principalPath3 = [(DAContactSearchResultElement *)elementCopy principalPath];
    v149 = [principalPath2 isEqualToString:principalPath3];

    if (!v149)
    {
      goto LABEL_68;
    }
  }

  iPhone = [(DAContactSearchResultElement *)self iPhone];
  if (iPhone)
  {
    v151 = iPhone;
    iPhone2 = [(DAContactSearchResultElement *)self iPhone];
    iPhone3 = [(DAContactSearchResultElement *)elementCopy iPhone];
    v154 = [iPhone2 isEqualToString:iPhone3];

    if (!v154)
    {
      goto LABEL_68;
    }
  }

  mainPhone = [(DAContactSearchResultElement *)self mainPhone];
  if (mainPhone)
  {
    v156 = mainPhone;
    mainPhone2 = [(DAContactSearchResultElement *)self mainPhone];
    mainPhone3 = [(DAContactSearchResultElement *)elementCopy mainPhone];
    v159 = [mainPhone2 isEqualToString:mainPhone3];

    if (!v159)
    {
      goto LABEL_68;
    }
  }

  workFaxPhone = [(DAContactSearchResultElement *)self workFaxPhone];
  if (workFaxPhone)
  {
    v161 = workFaxPhone;
    workFaxPhone2 = [(DAContactSearchResultElement *)self workFaxPhone];
    workFaxPhone3 = [(DAContactSearchResultElement *)elementCopy workFaxPhone];
    v164 = [workFaxPhone2 isEqualToString:workFaxPhone3];

    if (!v164)
    {
LABEL_68:
      v169 = 0;
      goto LABEL_70;
    }
  }

  cuAddresses = [(DAContactSearchResultElement *)self cuAddresses];
  if (!cuAddresses)
  {
LABEL_69:
    v169 = 1;
    goto LABEL_70;
  }

  v166 = cuAddresses;
  cuAddresses2 = [(DAContactSearchResultElement *)self cuAddresses];
  cuAddresses3 = [(DAContactSearchResultElement *)elementCopy cuAddresses];
  v169 = [cuAddresses2 isEqual:cuAddresses3];

LABEL_70:
  return v169 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(DAContactSearchResultElement *)self isEqualToDAContactSearchResultElement:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayName = [(DAContactSearchResultElement *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"DisplayNameKey"];

  firstName = [(DAContactSearchResultElement *)self firstName];
  [coderCopy encodeObject:firstName forKey:@"FirstNameKey"];

  lastName = [(DAContactSearchResultElement *)self lastName];
  [coderCopy encodeObject:lastName forKey:@"LastNameKey"];

  emailAddress = [(DAContactSearchResultElement *)self emailAddress];
  [coderCopy encodeObject:emailAddress forKey:@"EmailAddressKey"];

  workPhone = [(DAContactSearchResultElement *)self workPhone];
  [coderCopy encodeObject:workPhone forKey:@"WorkPhoneKey"];

  mobilePhone = [(DAContactSearchResultElement *)self mobilePhone];
  [coderCopy encodeObject:mobilePhone forKey:@"MobilePhoneKey"];

  company = [(DAContactSearchResultElement *)self company];
  [coderCopy encodeObject:company forKey:@"CompanyKey"];

  title = [(DAContactSearchResultElement *)self title];
  [coderCopy encodeObject:title forKey:@"TitleKey"];

  alias = [(DAContactSearchResultElement *)self alias];
  [coderCopy encodeObject:alias forKey:@"AliasKey"];

  homePhone = [(DAContactSearchResultElement *)self homePhone];
  [coderCopy encodeObject:homePhone forKey:@"HomePhoneKey"];

  office = [(DAContactSearchResultElement *)self office];
  [coderCopy encodeObject:office forKey:@"OfficeKey"];

  serverSource = [(DAContactSearchResultElement *)self serverSource];
  [coderCopy encodeObject:serverSource forKey:@"ServerSourceKey"];

  recordName = [(DAContactSearchResultElement *)self recordName];
  [coderCopy encodeObject:recordName forKey:@"RecordNameKey"];

  faxPhone = [(DAContactSearchResultElement *)self faxPhone];
  [coderCopy encodeObject:faxPhone forKey:@"FaxPhoneKey"];

  department = [(DAContactSearchResultElement *)self department];
  [coderCopy encodeObject:department forKey:@"DepartmentKey"];

  street = [(DAContactSearchResultElement *)self street];
  [coderCopy encodeObject:street forKey:@"StreetKey"];

  city = [(DAContactSearchResultElement *)self city];
  [coderCopy encodeObject:city forKey:@"CityKey"];

  state = [(DAContactSearchResultElement *)self state];
  [coderCopy encodeObject:state forKey:@"StateKey"];

  v23 = [(DAContactSearchResultElement *)self zip];
  [coderCopy encodeObject:v23 forKey:@"ZipKey"];

  country = [(DAContactSearchResultElement *)self country];
  [coderCopy encodeObject:country forKey:@"CountryKey"];

  jpegPhoto = [(DAContactSearchResultElement *)self jpegPhoto];
  [coderCopy encodeObject:jpegPhoto forKey:@"JpegPhotoKey"];

  imService = [(DAContactSearchResultElement *)self imService];
  [coderCopy encodeObject:imService forKey:@"ImServiceKey"];

  imUsername = [(DAContactSearchResultElement *)self imUsername];
  [coderCopy encodeObject:imUsername forKey:@"ImUsernameKey"];

  v28 = [(DAContactSearchResultElement *)self uri];
  [coderCopy encodeObject:v28 forKey:@"UriKey"];

  buildingName = [(DAContactSearchResultElement *)self buildingName];
  [coderCopy encodeObject:buildingName forKey:@"BuildingNameKey"];

  appleFloor = [(DAContactSearchResultElement *)self appleFloor];
  [coderCopy encodeObject:appleFloor forKey:@"AppleFloorKey"];

  pagerNumber = [(DAContactSearchResultElement *)self pagerNumber];
  [coderCopy encodeObject:pagerNumber forKey:@"PagerNumberKey"];

  postalAddress = [(DAContactSearchResultElement *)self postalAddress];
  [coderCopy encodeObject:postalAddress forKey:@"PostalAddressKey"];

  homePostalAddress = [(DAContactSearchResultElement *)self homePostalAddress];
  [coderCopy encodeObject:homePostalAddress forKey:@"HomePostalAddressKey"];

  principalPath = [(DAContactSearchResultElement *)self principalPath];
  [coderCopy encodeObject:principalPath forKey:@"PrincipalPathKey"];

  preferredUserAddress = [(DAContactSearchResultElement *)self preferredUserAddress];
  [coderCopy encodeObject:preferredUserAddress forKey:@"PreferredUserAddressKey"];

  cuAddresses = [(DAContactSearchResultElement *)self cuAddresses];
  [coderCopy encodeObject:cuAddresses forKey:@"CUAddressesKey"];

  iPhone = [(DAContactSearchResultElement *)self iPhone];
  [coderCopy encodeObject:iPhone forKey:@"IPhone"];

  mainPhone = [(DAContactSearchResultElement *)self mainPhone];
  [coderCopy encodeObject:mainPhone forKey:@"MainPhone"];

  workFaxPhone = [(DAContactSearchResultElement *)self workFaxPhone];
  [coderCopy encodeObject:workFaxPhone forKey:@"WorkFaxPhone"];

  identifierOnServer = [(DAContactSearchResultElement *)self identifierOnServer];
  [coderCopy encodeObject:identifierOnServer forKey:@"IdentifierOnServerKey"];
}

- (DAContactSearchResultElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v46.receiver = self;
  v46.super_class = DAContactSearchResultElement;
  v5 = [(DAContactSearchResultElement *)&v46 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayNameKey"];
    [(DAContactSearchResultElement *)v5 setDisplayName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FirstNameKey"];
    [(DAContactSearchResultElement *)v5 setFirstName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastNameKey"];
    [(DAContactSearchResultElement *)v5 setLastName:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EmailAddressKey"];
    [(DAContactSearchResultElement *)v5 setEmailAddress:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WorkPhoneKey"];
    [(DAContactSearchResultElement *)v5 setWorkPhone:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MobilePhoneKey"];
    [(DAContactSearchResultElement *)v5 setMobilePhone:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CompanyKey"];
    [(DAContactSearchResultElement *)v5 setCompany:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TitleKey"];
    [(DAContactSearchResultElement *)v5 setTitle:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AliasKey"];
    [(DAContactSearchResultElement *)v5 setAlias:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HomePhoneKey"];
    [(DAContactSearchResultElement *)v5 setHomePhone:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OfficeKey"];
    [(DAContactSearchResultElement *)v5 setOffice:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServerSourceKey"];
    [(DAContactSearchResultElement *)v5 setServerSource:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecordNameKey"];
    [(DAContactSearchResultElement *)v5 setRecordName:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FaxPhoneKey"];
    [(DAContactSearchResultElement *)v5 setFaxPhone:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DepartmentKey"];
    [(DAContactSearchResultElement *)v5 setDepartment:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StreetKey"];
    [(DAContactSearchResultElement *)v5 setStreet:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CityKey"];
    [(DAContactSearchResultElement *)v5 setCity:v22];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StateKey"];
    [(DAContactSearchResultElement *)v5 setState:v23];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ZipKey"];
    [(DAContactSearchResultElement *)v5 setZip:v24];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CountryKey"];
    [(DAContactSearchResultElement *)v5 setCountry:v25];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"JpegPhotoKey"];
    [(DAContactSearchResultElement *)v5 setJpegPhoto:v26];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ImServiceKey"];
    [(DAContactSearchResultElement *)v5 setImService:v27];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ImUsernameKey"];
    [(DAContactSearchResultElement *)v5 setImUsername:v28];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UriKey"];
    [(DAContactSearchResultElement *)v5 setUri:v29];

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BuildingNameKey"];
    [(DAContactSearchResultElement *)v5 setBuildingName:v30];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppleFloorKey"];
    [(DAContactSearchResultElement *)v5 setAppleFloor:v31];

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PagerNumberKey"];
    [(DAContactSearchResultElement *)v5 setPagerNumber:v32];

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PostalAddressKey"];
    [(DAContactSearchResultElement *)v5 setPostalAddress:v33];

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HomePostalAddressKey"];
    [(DAContactSearchResultElement *)v5 setHomePostalAddress:v34];

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrincipalPathKey"];
    [(DAContactSearchResultElement *)v5 setPrincipalPath:v35];

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreferredUserAddressKey"];
    [(DAContactSearchResultElement *)v5 setPreferredUserAddress:v36];

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"CUAddressesKey"];
    [(DAContactSearchResultElement *)v5 setCuAddresses:v40];

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IPhone"];
    [(DAContactSearchResultElement *)v5 setIPhone:v41];

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MainPhone"];
    [(DAContactSearchResultElement *)v5 setMainPhone:v42];

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WorkFaxPhone"];
    [(DAContactSearchResultElement *)v5 setWorkFaxPhone:v43];

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentifierOnServerKey"];
    [(DAContactSearchResultElement *)v5 setIdentifierOnServer:v44];
  }

  return v5;
}

@end