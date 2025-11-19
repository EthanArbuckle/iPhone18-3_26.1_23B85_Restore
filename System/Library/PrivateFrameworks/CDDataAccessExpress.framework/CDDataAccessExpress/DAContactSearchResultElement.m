@interface DAContactSearchResultElement
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDAContactSearchResultElement:(id)a3;
- (DAContactSearchResultElement)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAContactSearchResultElement

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DAContactSearchResultElement *)self firstName];
  v6 = [(DAContactSearchResultElement *)self lastName];
  v7 = [(DAContactSearchResultElement *)self displayName];
  v8 = [(DAContactSearchResultElement *)self emailAddress];
  v9 = [v3 stringWithFormat:@"<%@ %p> %@ %@ (%@): %@", v4, self, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqualToDAContactSearchResultElement:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_69;
  }

  v5 = [(DAContactSearchResultElement *)self firstName];
  if (v5)
  {
    v6 = v5;
    v7 = [(DAContactSearchResultElement *)self firstName];
    v8 = [(DAContactSearchResultElement *)v4 firstName];
    v9 = [v7 isEqualToString:v8];

    if (!v9)
    {
      goto LABEL_68;
    }
  }

  v10 = [(DAContactSearchResultElement *)self lastName];
  if (v10)
  {
    v11 = v10;
    v12 = [(DAContactSearchResultElement *)self lastName];
    v13 = [(DAContactSearchResultElement *)v4 lastName];
    v14 = [v12 isEqualToString:v13];

    if (!v14)
    {
      goto LABEL_68;
    }
  }

  v15 = [(DAContactSearchResultElement *)self emailAddress];
  if (v15)
  {
    v16 = v15;
    v17 = [(DAContactSearchResultElement *)self emailAddress];
    v18 = [(DAContactSearchResultElement *)v4 emailAddress];
    v19 = [v17 isEqualToString:v18];

    if (!v19)
    {
      goto LABEL_68;
    }
  }

  v20 = [(DAContactSearchResultElement *)self workPhone];
  if (v20)
  {
    v21 = v20;
    v22 = [(DAContactSearchResultElement *)self workPhone];
    v23 = [(DAContactSearchResultElement *)v4 workPhone];
    v24 = [v22 isEqualToString:v23];

    if (!v24)
    {
      goto LABEL_68;
    }
  }

  v25 = [(DAContactSearchResultElement *)self mobilePhone];
  if (v25)
  {
    v26 = v25;
    v27 = [(DAContactSearchResultElement *)self mobilePhone];
    v28 = [(DAContactSearchResultElement *)v4 mobilePhone];
    v29 = [v27 isEqualToString:v28];

    if (!v29)
    {
      goto LABEL_68;
    }
  }

  v30 = [(DAContactSearchResultElement *)self company];
  if (v30)
  {
    v31 = v30;
    v32 = [(DAContactSearchResultElement *)self company];
    v33 = [(DAContactSearchResultElement *)v4 company];
    v34 = [v32 isEqualToString:v33];

    if (!v34)
    {
      goto LABEL_68;
    }
  }

  v35 = [(DAContactSearchResultElement *)self title];
  if (v35)
  {
    v36 = v35;
    v37 = [(DAContactSearchResultElement *)self title];
    v38 = [(DAContactSearchResultElement *)v4 title];
    v39 = [v37 isEqualToString:v38];

    if (!v39)
    {
      goto LABEL_68;
    }
  }

  v40 = [(DAContactSearchResultElement *)self alias];
  if (v40)
  {
    v41 = v40;
    v42 = [(DAContactSearchResultElement *)self alias];
    v43 = [(DAContactSearchResultElement *)v4 alias];
    v44 = [v42 isEqualToString:v43];

    if (!v44)
    {
      goto LABEL_68;
    }
  }

  v45 = [(DAContactSearchResultElement *)self homePhone];
  if (v45)
  {
    v46 = v45;
    v47 = [(DAContactSearchResultElement *)self homePhone];
    v48 = [(DAContactSearchResultElement *)v4 homePhone];
    v49 = [v47 isEqualToString:v48];

    if (!v49)
    {
      goto LABEL_68;
    }
  }

  v50 = [(DAContactSearchResultElement *)self office];
  if (v50)
  {
    v51 = v50;
    v52 = [(DAContactSearchResultElement *)self office];
    v53 = [(DAContactSearchResultElement *)v4 office];
    v54 = [v52 isEqualToString:v53];

    if (!v54)
    {
      goto LABEL_68;
    }
  }

  v55 = [(DAContactSearchResultElement *)self serverSource];
  if (v55)
  {
    v56 = v55;
    v57 = [(DAContactSearchResultElement *)self serverSource];
    v58 = [(DAContactSearchResultElement *)v4 serverSource];
    v59 = [v57 isEqualToString:v58];

    if (!v59)
    {
      goto LABEL_68;
    }
  }

  v60 = [(DAContactSearchResultElement *)self recordName];
  if (v60)
  {
    v61 = v60;
    v62 = [(DAContactSearchResultElement *)self recordName];
    v63 = [(DAContactSearchResultElement *)v4 recordName];
    v64 = [v62 isEqualToString:v63];

    if (!v64)
    {
      goto LABEL_68;
    }
  }

  v65 = [(DAContactSearchResultElement *)self faxPhone];
  if (v65)
  {
    v66 = v65;
    v67 = [(DAContactSearchResultElement *)self faxPhone];
    v68 = [(DAContactSearchResultElement *)v4 faxPhone];
    v69 = [v67 isEqualToString:v68];

    if (!v69)
    {
      goto LABEL_68;
    }
  }

  v70 = [(DAContactSearchResultElement *)self department];
  if (v70)
  {
    v71 = v70;
    v72 = [(DAContactSearchResultElement *)self department];
    v73 = [(DAContactSearchResultElement *)v4 department];
    v74 = [v72 isEqualToString:v73];

    if (!v74)
    {
      goto LABEL_68;
    }
  }

  v75 = [(DAContactSearchResultElement *)self street];
  if (v75)
  {
    v76 = v75;
    v77 = [(DAContactSearchResultElement *)self street];
    v78 = [(DAContactSearchResultElement *)v4 street];
    v79 = [v77 isEqualToString:v78];

    if (!v79)
    {
      goto LABEL_68;
    }
  }

  v80 = [(DAContactSearchResultElement *)self city];
  if (v80)
  {
    v81 = v80;
    v82 = [(DAContactSearchResultElement *)self city];
    v83 = [(DAContactSearchResultElement *)v4 city];
    v84 = [v82 isEqualToString:v83];

    if (!v84)
    {
      goto LABEL_68;
    }
  }

  v85 = [(DAContactSearchResultElement *)self state];
  if (v85)
  {
    v86 = v85;
    v87 = [(DAContactSearchResultElement *)self state];
    v88 = [(DAContactSearchResultElement *)v4 state];
    v89 = [v87 isEqualToString:v88];

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
    v93 = [(DAContactSearchResultElement *)v4 zip];
    v94 = [v92 isEqualToString:v93];

    if (!v94)
    {
      goto LABEL_68;
    }
  }

  v95 = [(DAContactSearchResultElement *)self country];
  if (v95)
  {
    v96 = v95;
    v97 = [(DAContactSearchResultElement *)self country];
    v98 = [(DAContactSearchResultElement *)v4 country];
    v99 = [v97 isEqualToString:v98];

    if (!v99)
    {
      goto LABEL_68;
    }
  }

  v100 = [(DAContactSearchResultElement *)self jpegPhoto];
  if (v100)
  {
    v101 = v100;
    v102 = [(DAContactSearchResultElement *)self jpegPhoto];
    v103 = [(DAContactSearchResultElement *)v4 jpegPhoto];
    v104 = [v102 isEqualToData:v103];

    if (!v104)
    {
      goto LABEL_68;
    }
  }

  v105 = [(DAContactSearchResultElement *)self imService];
  if (v105)
  {
    v106 = v105;
    v107 = [(DAContactSearchResultElement *)self imService];
    v108 = [(DAContactSearchResultElement *)v4 imService];
    v109 = [v107 isEqualToString:v108];

    if (!v109)
    {
      goto LABEL_68;
    }
  }

  v110 = [(DAContactSearchResultElement *)self imUsername];
  if (v110)
  {
    v111 = v110;
    v112 = [(DAContactSearchResultElement *)self imUsername];
    v113 = [(DAContactSearchResultElement *)v4 imUsername];
    v114 = [v112 isEqualToString:v113];

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
    v118 = [(DAContactSearchResultElement *)v4 uri];
    v119 = [v117 isEqualToString:v118];

    if (!v119)
    {
      goto LABEL_68;
    }
  }

  v120 = [(DAContactSearchResultElement *)self buildingName];
  if (v120)
  {
    v121 = v120;
    v122 = [(DAContactSearchResultElement *)self buildingName];
    v123 = [(DAContactSearchResultElement *)v4 buildingName];
    v124 = [v122 isEqualToString:v123];

    if (!v124)
    {
      goto LABEL_68;
    }
  }

  v125 = [(DAContactSearchResultElement *)self appleFloor];
  if (v125)
  {
    v126 = v125;
    v127 = [(DAContactSearchResultElement *)self appleFloor];
    v128 = [(DAContactSearchResultElement *)v4 appleFloor];
    v129 = [v127 isEqualToString:v128];

    if (!v129)
    {
      goto LABEL_68;
    }
  }

  v130 = [(DAContactSearchResultElement *)self pagerNumber];
  if (v130)
  {
    v131 = v130;
    v132 = [(DAContactSearchResultElement *)self pagerNumber];
    v133 = [(DAContactSearchResultElement *)v4 pagerNumber];
    v134 = [v132 isEqualToString:v133];

    if (!v134)
    {
      goto LABEL_68;
    }
  }

  v135 = [(DAContactSearchResultElement *)self postalAddress];
  if (v135)
  {
    v136 = v135;
    v137 = [(DAContactSearchResultElement *)self postalAddress];
    v138 = [(DAContactSearchResultElement *)v4 postalAddress];
    v139 = [v137 isEqualToString:v138];

    if (!v139)
    {
      goto LABEL_68;
    }
  }

  v140 = [(DAContactSearchResultElement *)self homePostalAddress];
  if (v140)
  {
    v141 = v140;
    v142 = [(DAContactSearchResultElement *)self homePostalAddress];
    v143 = [(DAContactSearchResultElement *)v4 homePostalAddress];
    v144 = [v142 isEqualToString:v143];

    if (!v144)
    {
      goto LABEL_68;
    }
  }

  v145 = [(DAContactSearchResultElement *)self principalPath];
  if (v145)
  {
    v146 = v145;
    v147 = [(DAContactSearchResultElement *)self principalPath];
    v148 = [(DAContactSearchResultElement *)v4 principalPath];
    v149 = [v147 isEqualToString:v148];

    if (!v149)
    {
      goto LABEL_68;
    }
  }

  v150 = [(DAContactSearchResultElement *)self iPhone];
  if (v150)
  {
    v151 = v150;
    v152 = [(DAContactSearchResultElement *)self iPhone];
    v153 = [(DAContactSearchResultElement *)v4 iPhone];
    v154 = [v152 isEqualToString:v153];

    if (!v154)
    {
      goto LABEL_68;
    }
  }

  v155 = [(DAContactSearchResultElement *)self mainPhone];
  if (v155)
  {
    v156 = v155;
    v157 = [(DAContactSearchResultElement *)self mainPhone];
    v158 = [(DAContactSearchResultElement *)v4 mainPhone];
    v159 = [v157 isEqualToString:v158];

    if (!v159)
    {
      goto LABEL_68;
    }
  }

  v160 = [(DAContactSearchResultElement *)self workFaxPhone];
  if (v160)
  {
    v161 = v160;
    v162 = [(DAContactSearchResultElement *)self workFaxPhone];
    v163 = [(DAContactSearchResultElement *)v4 workFaxPhone];
    v164 = [v162 isEqualToString:v163];

    if (!v164)
    {
LABEL_68:
      v169 = 0;
      goto LABEL_70;
    }
  }

  v165 = [(DAContactSearchResultElement *)self cuAddresses];
  if (!v165)
  {
LABEL_69:
    v169 = 1;
    goto LABEL_70;
  }

  v166 = v165;
  v167 = [(DAContactSearchResultElement *)self cuAddresses];
  v168 = [(DAContactSearchResultElement *)v4 cuAddresses];
  v169 = [v167 isEqual:v168];

LABEL_70:
  return v169 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(DAContactSearchResultElement *)self isEqualToDAContactSearchResultElement:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAContactSearchResultElement *)self displayName];
  [v4 encodeObject:v5 forKey:@"DisplayNameKey"];

  v6 = [(DAContactSearchResultElement *)self firstName];
  [v4 encodeObject:v6 forKey:@"FirstNameKey"];

  v7 = [(DAContactSearchResultElement *)self lastName];
  [v4 encodeObject:v7 forKey:@"LastNameKey"];

  v8 = [(DAContactSearchResultElement *)self emailAddress];
  [v4 encodeObject:v8 forKey:@"EmailAddressKey"];

  v9 = [(DAContactSearchResultElement *)self workPhone];
  [v4 encodeObject:v9 forKey:@"WorkPhoneKey"];

  v10 = [(DAContactSearchResultElement *)self mobilePhone];
  [v4 encodeObject:v10 forKey:@"MobilePhoneKey"];

  v11 = [(DAContactSearchResultElement *)self company];
  [v4 encodeObject:v11 forKey:@"CompanyKey"];

  v12 = [(DAContactSearchResultElement *)self title];
  [v4 encodeObject:v12 forKey:@"TitleKey"];

  v13 = [(DAContactSearchResultElement *)self alias];
  [v4 encodeObject:v13 forKey:@"AliasKey"];

  v14 = [(DAContactSearchResultElement *)self homePhone];
  [v4 encodeObject:v14 forKey:@"HomePhoneKey"];

  v15 = [(DAContactSearchResultElement *)self office];
  [v4 encodeObject:v15 forKey:@"OfficeKey"];

  v16 = [(DAContactSearchResultElement *)self serverSource];
  [v4 encodeObject:v16 forKey:@"ServerSourceKey"];

  v17 = [(DAContactSearchResultElement *)self recordName];
  [v4 encodeObject:v17 forKey:@"RecordNameKey"];

  v18 = [(DAContactSearchResultElement *)self faxPhone];
  [v4 encodeObject:v18 forKey:@"FaxPhoneKey"];

  v19 = [(DAContactSearchResultElement *)self department];
  [v4 encodeObject:v19 forKey:@"DepartmentKey"];

  v20 = [(DAContactSearchResultElement *)self street];
  [v4 encodeObject:v20 forKey:@"StreetKey"];

  v21 = [(DAContactSearchResultElement *)self city];
  [v4 encodeObject:v21 forKey:@"CityKey"];

  v22 = [(DAContactSearchResultElement *)self state];
  [v4 encodeObject:v22 forKey:@"StateKey"];

  v23 = [(DAContactSearchResultElement *)self zip];
  [v4 encodeObject:v23 forKey:@"ZipKey"];

  v24 = [(DAContactSearchResultElement *)self country];
  [v4 encodeObject:v24 forKey:@"CountryKey"];

  v25 = [(DAContactSearchResultElement *)self jpegPhoto];
  [v4 encodeObject:v25 forKey:@"JpegPhotoKey"];

  v26 = [(DAContactSearchResultElement *)self imService];
  [v4 encodeObject:v26 forKey:@"ImServiceKey"];

  v27 = [(DAContactSearchResultElement *)self imUsername];
  [v4 encodeObject:v27 forKey:@"ImUsernameKey"];

  v28 = [(DAContactSearchResultElement *)self uri];
  [v4 encodeObject:v28 forKey:@"UriKey"];

  v29 = [(DAContactSearchResultElement *)self buildingName];
  [v4 encodeObject:v29 forKey:@"BuildingNameKey"];

  v30 = [(DAContactSearchResultElement *)self appleFloor];
  [v4 encodeObject:v30 forKey:@"AppleFloorKey"];

  v31 = [(DAContactSearchResultElement *)self pagerNumber];
  [v4 encodeObject:v31 forKey:@"PagerNumberKey"];

  v32 = [(DAContactSearchResultElement *)self postalAddress];
  [v4 encodeObject:v32 forKey:@"PostalAddressKey"];

  v33 = [(DAContactSearchResultElement *)self homePostalAddress];
  [v4 encodeObject:v33 forKey:@"HomePostalAddressKey"];

  v34 = [(DAContactSearchResultElement *)self principalPath];
  [v4 encodeObject:v34 forKey:@"PrincipalPathKey"];

  v35 = [(DAContactSearchResultElement *)self preferredUserAddress];
  [v4 encodeObject:v35 forKey:@"PreferredUserAddressKey"];

  v36 = [(DAContactSearchResultElement *)self cuAddresses];
  [v4 encodeObject:v36 forKey:@"CUAddressesKey"];

  v37 = [(DAContactSearchResultElement *)self iPhone];
  [v4 encodeObject:v37 forKey:@"IPhone"];

  v38 = [(DAContactSearchResultElement *)self mainPhone];
  [v4 encodeObject:v38 forKey:@"MainPhone"];

  v39 = [(DAContactSearchResultElement *)self workFaxPhone];
  [v4 encodeObject:v39 forKey:@"WorkFaxPhone"];

  v40 = [(DAContactSearchResultElement *)self identifierOnServer];
  [v4 encodeObject:v40 forKey:@"IdentifierOnServerKey"];
}

- (DAContactSearchResultElement)initWithCoder:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = DAContactSearchResultElement;
  v5 = [(DAContactSearchResultElement *)&v46 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayNameKey"];
    [(DAContactSearchResultElement *)v5 setDisplayName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FirstNameKey"];
    [(DAContactSearchResultElement *)v5 setFirstName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastNameKey"];
    [(DAContactSearchResultElement *)v5 setLastName:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EmailAddressKey"];
    [(DAContactSearchResultElement *)v5 setEmailAddress:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WorkPhoneKey"];
    [(DAContactSearchResultElement *)v5 setWorkPhone:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MobilePhoneKey"];
    [(DAContactSearchResultElement *)v5 setMobilePhone:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CompanyKey"];
    [(DAContactSearchResultElement *)v5 setCompany:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TitleKey"];
    [(DAContactSearchResultElement *)v5 setTitle:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AliasKey"];
    [(DAContactSearchResultElement *)v5 setAlias:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HomePhoneKey"];
    [(DAContactSearchResultElement *)v5 setHomePhone:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OfficeKey"];
    [(DAContactSearchResultElement *)v5 setOffice:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServerSourceKey"];
    [(DAContactSearchResultElement *)v5 setServerSource:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecordNameKey"];
    [(DAContactSearchResultElement *)v5 setRecordName:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FaxPhoneKey"];
    [(DAContactSearchResultElement *)v5 setFaxPhone:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DepartmentKey"];
    [(DAContactSearchResultElement *)v5 setDepartment:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StreetKey"];
    [(DAContactSearchResultElement *)v5 setStreet:v21];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CityKey"];
    [(DAContactSearchResultElement *)v5 setCity:v22];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StateKey"];
    [(DAContactSearchResultElement *)v5 setState:v23];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ZipKey"];
    [(DAContactSearchResultElement *)v5 setZip:v24];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CountryKey"];
    [(DAContactSearchResultElement *)v5 setCountry:v25];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"JpegPhotoKey"];
    [(DAContactSearchResultElement *)v5 setJpegPhoto:v26];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ImServiceKey"];
    [(DAContactSearchResultElement *)v5 setImService:v27];

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ImUsernameKey"];
    [(DAContactSearchResultElement *)v5 setImUsername:v28];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UriKey"];
    [(DAContactSearchResultElement *)v5 setUri:v29];

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BuildingNameKey"];
    [(DAContactSearchResultElement *)v5 setBuildingName:v30];

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AppleFloorKey"];
    [(DAContactSearchResultElement *)v5 setAppleFloor:v31];

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PagerNumberKey"];
    [(DAContactSearchResultElement *)v5 setPagerNumber:v32];

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PostalAddressKey"];
    [(DAContactSearchResultElement *)v5 setPostalAddress:v33];

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HomePostalAddressKey"];
    [(DAContactSearchResultElement *)v5 setHomePostalAddress:v34];

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrincipalPathKey"];
    [(DAContactSearchResultElement *)v5 setPrincipalPath:v35];

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreferredUserAddressKey"];
    [(DAContactSearchResultElement *)v5 setPreferredUserAddress:v36];

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"CUAddressesKey"];
    [(DAContactSearchResultElement *)v5 setCuAddresses:v40];

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IPhone"];
    [(DAContactSearchResultElement *)v5 setIPhone:v41];

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MainPhone"];
    [(DAContactSearchResultElement *)v5 setMainPhone:v42];

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WorkFaxPhone"];
    [(DAContactSearchResultElement *)v5 setWorkFaxPhone:v43];

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentifierOnServerKey"];
    [(DAContactSearchResultElement *)v5 setIdentifierOnServer:v44];
  }

  return v5;
}

@end