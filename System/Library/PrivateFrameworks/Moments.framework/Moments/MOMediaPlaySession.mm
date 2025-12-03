@interface MOMediaPlaySession
+ (BOOL)isFirstPartyApp:(id)app;
+ (BOOL)isValidThirdParty:(id)party bundleCategory:(id)category;
+ (BOOL)isValidThirdPartyEvent:(id)event bundleCategory:(id)category mediaTypeString:(id)string playTime:(double)time;
+ (id)describeCategory:(int)category;
+ (id)getMOPlaySessionMediaType:(id)type bundleId:(id)id;
+ (id)redactString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMediaPlaySession:(id)session;
- (MOMediaPlaySession)initWithCoder:(id)coder;
- (MOMediaPlaySession)initWithTitle:(id)title album:(id)album bundleId:(id)id productId:(id)productId genre:(id)genre mediaType:(id)type artist:(id)artist startDate:(id)self0 endDate:(id)self1 duration:(unsigned int)self2 isRemote:(BOOL)self3 deviceSource:(id)self4 bgColor:(id)self5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOMediaPlaySession

- (MOMediaPlaySession)initWithTitle:(id)title album:(id)album bundleId:(id)id productId:(id)productId genre:(id)genre mediaType:(id)type artist:(id)artist startDate:(id)self0 endDate:(id)self1 duration:(unsigned int)self2 isRemote:(BOOL)self3 deviceSource:(id)self4 bgColor:(id)self5
{
  titleCopy = title;
  albumCopy = album;
  albumCopy2 = album;
  selfCopy = self;
  v45 = albumCopy2;
  idCopy = id;
  idCopy2 = id;
  productIdCopy = productId;
  productIdCopy2 = productId;
  genreCopy = genre;
  genreCopy2 = genre;
  typeCopy = type;
  typeCopy2 = type;
  artistCopy = artist;
  dateCopy = date;
  endDateCopy = endDate;
  sourceCopy = source;
  colorCopy = color;
  v48 = endDateCopy;
  if (dateCopy)
  {
    if (endDateCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v31 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [MOMediaPlaySession initWithTitle:album:bundleId:productId:genre:mediaType:artist:startDate:endDate:duration:isRemote:deviceSource:bgColor:];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MOMediaPlaySession.m" lineNumber:33 description:{@"Invalid parameter not satisfying: startDate != nil (in %s:%d)", "-[MOMediaPlaySession initWithTitle:album:bundleId:productId:genre:mediaType:artist:startDate:endDate:duration:isRemote:deviceSource:bgColor:]", 33}];

  endDateCopy = v48;
  if (!v48)
  {
LABEL_7:
    v33 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [MOMediaPlaySession initWithTitle:album:bundleId:productId:genre:mediaType:artist:startDate:endDate:duration:isRemote:deviceSource:bgColor:];
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"MOMediaPlaySession.m" lineNumber:34 description:{@"Invalid parameter not satisfying: endDate != nil (in %s:%d)", "-[MOMediaPlaySession initWithTitle:album:bundleId:productId:genre:mediaType:artist:startDate:endDate:duration:isRemote:deviceSource:bgColor:]", 34}];

    endDateCopy = v48;
  }

LABEL_10:
  v49.receiver = selfCopy;
  v49.super_class = MOMediaPlaySession;
  v35 = [(MOMediaPlaySession *)&v49 init];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_title, title);
    objc_storeStrong(&v36->_album, albumCopy);
    objc_storeStrong(&v36->_bundleId, idCopy);
    objc_storeStrong(&v36->_productId, productIdCopy);
    objc_storeStrong(&v36->_genre, genreCopy);
    objc_storeStrong(&v36->_mediaType, typeCopy);
    objc_storeStrong(&v36->_artist, artist);
    objc_storeStrong(&v36->_startDate, date);
    objc_storeStrong(&v36->_endDate, endDate);
    v36->_duration = duration;
    endDateCopy = v48;
    v36->_isRemote = remote;
    objc_storeStrong(&v36->_deviceSource, source);
    objc_storeStrong(&v36->_bgColor, color);
  }

  return v36;
}

- (BOOL)isEqualToMediaPlaySession:(id)session
{
  sessionCopy = session;
  v5 = sessionCopy;
  if (!sessionCopy)
  {
    goto LABEL_29;
  }

  v6 = self->_title == 0;
  title = [sessionCopy title];
  v8 = title != 0;

  if (v6 == v8)
  {
    goto LABEL_29;
  }

  title = self->_title;
  if (title)
  {
    title2 = [v5 title];
    v11 = [(NSString *)title isEqual:title2];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  v12 = self->_album == 0;
  album = [v5 album];
  v14 = album != 0;

  if (v12 == v14)
  {
    goto LABEL_29;
  }

  album = self->_album;
  if (album)
  {
    album2 = [v5 album];
    v17 = [(NSString *)album isEqual:album2];

    if (!v17)
    {
      goto LABEL_29;
    }
  }

  v18 = self->_bundleId == 0;
  bundleId = [v5 bundleId];
  v20 = bundleId != 0;

  if (v18 == v20)
  {
    goto LABEL_29;
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    bundleId2 = [v5 bundleId];
    v23 = [(NSString *)bundleId isEqual:bundleId2];

    if (!v23)
    {
      goto LABEL_29;
    }
  }

  v24 = self->_productId == 0;
  productId = [v5 productId];
  v26 = productId != 0;

  if (v24 == v26)
  {
    goto LABEL_29;
  }

  productId = self->_productId;
  if (productId)
  {
    productId2 = [v5 productId];
    v29 = [(NSString *)productId isEqual:productId2];

    if (!v29)
    {
      goto LABEL_29;
    }
  }

  v30 = self->_genre == 0;
  genre = [v5 genre];
  v32 = genre != 0;

  if (v30 == v32)
  {
    goto LABEL_29;
  }

  genre = self->_genre;
  if (genre)
  {
    genre2 = [v5 genre];
    v35 = [(NSString *)genre isEqual:genre2];

    if (!v35)
    {
      goto LABEL_29;
    }
  }

  v36 = self->_mediaType == 0;
  mediaType = [v5 mediaType];
  v38 = mediaType != 0;

  if (v36 == v38)
  {
    goto LABEL_29;
  }

  mediaType = self->_mediaType;
  if (mediaType)
  {
    mediaType2 = [v5 mediaType];
    v41 = [(NSString *)mediaType isEqual:mediaType2];

    if (!v41)
    {
      goto LABEL_29;
    }
  }

  v42 = self->_artist == 0;
  artist = [v5 artist];
  v44 = artist != 0;

  if (v42 == v44)
  {
    goto LABEL_29;
  }

  artist = self->_artist;
  if (artist)
  {
    artist2 = [v5 artist];
    v47 = [(NSString *)artist isEqual:artist2];

    if (!v47)
    {
      goto LABEL_29;
    }
  }

  v48 = self->_startDate == 0;
  startDate = [v5 startDate];
  v50 = startDate != 0;

  if (v48 == v50)
  {
    goto LABEL_29;
  }

  startDate = self->_startDate;
  if (startDate)
  {
    startDate2 = [v5 startDate];
    v53 = [(NSDate *)startDate isEqual:startDate2];

    if (!v53)
    {
      goto LABEL_29;
    }
  }

  v54 = self->_endDate == 0;
  endDate = [v5 endDate];
  v56 = endDate != 0;

  if (v54 == v56)
  {
LABEL_29:
    v59 = 0;
  }

  else
  {
    endDate = self->_endDate;
    if (endDate)
    {
      endDate2 = [v5 endDate];
      v59 = [(NSDate *)endDate isEqual:endDate2];
    }

    else
    {
      v59 = 1;
    }
  }

  return v59 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MOMediaPlaySession *)self isEqualToMediaPlaySession:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_album hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_bundleId hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_productId hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_genre hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_mediaType hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_artist hash]- v8 + 32 * v8;
  v10 = [(NSDate *)self->_startDate hash]- v9 + 32 * v9;
  return [(NSDate *)self->_endDate hash]- v10 + 32 * v10;
}

- (MOMediaPlaySession)initWithCoder:(id)coder
{
  v107[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key title (expected %@, decoded %@)", v7, v9, 0];
      v106 = *MEMORY[0x277CCA450];
      v107[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:&v106 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v11];
      [coderCopy failWithError:v12];
LABEL_4:
      v13 = 0;
LABEL_43:

      goto LABEL_44;
    }

LABEL_7:
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"album"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = objc_opt_class();
        v9 = NSStringFromClass(v15);
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key album (expected %@, decoded %@)", v9, v10, 0];
        v104 = *MEMORY[0x277CCA450];
        v105 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
        v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v12];
        [coderCopy failWithError:v17];
        v13 = 0;
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
      error = [coderCopy error];

      if (error)
      {
        v13 = 0;
LABEL_47:

        goto LABEL_48;
      }
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = objc_opt_class();
        v10 = NSStringFromClass(v19);
        v20 = objc_opt_class();
        v11 = NSStringFromClass(v20);
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key bundleId (expected %@, decoded %@)", v10, v11, 0];
        v102 = *MEMORY[0x277CCA450];
        v103 = v12;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v17];
        [coderCopy failWithError:v21];
        v22 = v21;
        v13 = 0;
LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {
      error2 = [coderCopy error];

      if (error2)
      {
        v13 = 0;
LABEL_46:

        goto LABEL_47;
      }
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productId"];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = objc_opt_class();
        v11 = NSStringFromClass(v24);
        v25 = objc_opt_class();
        v12 = NSStringFromClass(v25);
        v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key productId (expected %@, decoded %@)", v11, v12, 0];
        v100 = *MEMORY[0x277CCA450];
        v101 = v17;
        v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
        v26 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v83];
        [coderCopy failWithError:v26];
        v27 = v26;
        v13 = 0;
LABEL_39:

LABEL_40:
        v22 = v83;
        goto LABEL_41;
      }
    }

    else
    {
      error3 = [coderCopy error];

      if (error3)
      {
        v13 = 0;
LABEL_45:

        goto LABEL_46;
      }
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        selfCopy5 = self;
        v29 = objc_opt_class();
        v12 = NSStringFromClass(v29);
        v30 = objc_opt_class();
        v17 = NSStringFromClass(v30);
        v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key genre (expected %@, decoded %@)", v12, v17, 0];
        v98 = *MEMORY[0x277CCA450];
        v99 = v31;
        v83 = v31;
        v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
        v32 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v82];
        [coderCopy failWithError:v32];
        v13 = 0;
LABEL_37:

LABEL_38:
        self = selfCopy5;
        v27 = v82;
        goto LABEL_39;
      }
    }

    else
    {
      error4 = [coderCopy error];

      if (error4)
      {
        v13 = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        selfCopy5 = self;
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = objc_opt_class();
        NSStringFromClass(v36);
        v83 = v17 = v35;
        v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key mediaType (expected %@, decoded %@)", v35, v83, 0];
        v96 = *MEMORY[0x277CCA450];
        v97 = v37;
        v82 = v37;
        v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
        v38 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v80];
        [coderCopy failWithError:v38];
LABEL_34:
        v13 = 0;
LABEL_35:

LABEL_36:
        v32 = v80;
        goto LABEL_37;
      }
    }

    else
    {
      error5 = [coderCopy error];

      if (error5)
      {
        goto LABEL_4;
      }
    }

    v79 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artist"];
    if (v79)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        selfCopy5 = self;
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = objc_opt_class();
        v82 = NSStringFromClass(v42);
        v17 = v79;
        v83 = v41;
        v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key artist (expected %@, decoded %@)", v41, v82, 0];
        v94 = *MEMORY[0x277CCA450];
        v95 = v43;
        v80 = v43;
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v44 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v38];
        [coderCopy failWithError:v44];

        goto LABEL_34;
      }
    }

    else
    {
      error6 = [coderCopy error];

      if (error6)
      {
        v13 = 0;
        v17 = 0;
        goto LABEL_42;
      }
    }

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    if (!v22)
    {
      v13 = 0;
      v17 = v79;
      goto LABEL_41;
    }

    v83 = v22;
    error7 = [coderCopy error];

    if (error7)
    {
      v13 = 0;
      v17 = v79;
      goto LABEL_40;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v50 = objc_opt_class();
    if ((isKindOfClass & 1) == 0)
    {
      selfCopy5 = self;
      v52 = NSStringFromClass(v50);
      v53 = objc_opt_class();
      v80 = NSStringFromClass(v53);
      v82 = v52;
      v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key startDate (expected %@, decoded %@)", v52, v80, 0];
      v92 = *MEMORY[0x277CCA450];
      v93 = v38;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      v55 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v54];
      [coderCopy failWithError:v55];

LABEL_60:
      v13 = 0;
      v17 = v79;
      goto LABEL_35;
    }

    v27 = [coderCopy decodeObjectOfClass:v50 forKey:@"endDate"];
    if (!v27)
    {
      v13 = 0;
      v17 = v79;
      goto LABEL_39;
    }

    v82 = v27;
    error8 = [coderCopy error];

    if (error8)
    {
      v13 = 0;
      v17 = v79;
      v27 = v82;
      goto LABEL_39;
    }

    selfCopy5 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = [coderCopy decodeInt32ForKey:@"duration"];
      v74 = [coderCopy decodeBoolForKey:@"isRemote"];
      if ((v74 & 1) == 0)
      {
        error9 = [coderCopy error];

        if (error9)
        {
          v13 = 0;
          v17 = v79;
          goto LABEL_38;
        }

        if (([coderCopy containsValueForKey:@"isRemote"] & 1) == 0)
        {
          v88 = *MEMORY[0x277CCA450];
          v89 = @"Missing serialized value for MOMediaPlay.isRemote";
          v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
          v38 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:1 userInfo:v80];
          [coderCopy failWithError:v38];
          goto LABEL_60;
        }
      }

      v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceSource"];
      if (v80)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v56 = objc_opt_class();
          v38 = NSStringFromClass(v56);
          v57 = objc_opt_class();
          v78 = NSStringFromClass(v57);
          v75 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for MOMediaPlay key deviceSource (expected %@, decoded %@)", v38, v78, 0];
          v86 = *MEMORY[0x277CCA450];
          v87 = v75;
          v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
          v59 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v58];
          [coderCopy failWithError:v59];

LABEL_76:
          goto LABEL_60;
        }
      }

      else
      {
        error10 = [coderCopy error];

        if (error10)
        {
          v13 = 0;
          v17 = v79;
          goto LABEL_36;
        }
      }

      v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bkColor"];
      if (v38)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v67 = objc_opt_class();
          v78 = NSStringFromClass(v67);
          v68 = objc_opt_class();
          v76 = NSStringFromClass(v68);
          v73 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for MOMediaPlay key bkColor (expected %@, decoded %@)", v78, v76, 0];
          v84 = *MEMORY[0x277CCA450];
          v85 = v73;
          v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v70 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v69];
          [coderCopy failWithError:v70];

          goto LABEL_76;
        }
      }

      else
      {
        error11 = [coderCopy error];

        if (error11)
        {
          goto LABEL_60;
        }
      }

      v17 = v79;
      BYTE4(v72) = v74;
      LODWORD(v72) = v77;
      v13 = [(MOMediaPlaySession *)selfCopy5 initWithTitle:v5 album:v7 bundleId:v9 productId:v10 genre:v11 mediaType:v12 artist:v79 startDate:v83 endDate:v82 duration:v72 isRemote:v80 deviceSource:v38 bgColor:?];
      selfCopy5 = v13;
      goto LABEL_35;
    }

    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    v62 = objc_opt_class();
    v38 = NSStringFromClass(v62);
    v80 = v61;
    v78 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key endDate (expected %@, decoded %@)", v61, v38, 0];
    v90 = *MEMORY[0x277CCA450];
    v91 = v78;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    v64 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v63];
    [coderCopy failWithError:v64];

    goto LABEL_76;
  }

  error12 = [coderCopy error];

  if (!error12)
  {
    goto LABEL_7;
  }

  v13 = 0;
LABEL_48:

  v45 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)isValidThirdParty:(id)party bundleCategory:(id)category
{
  partyCopy = party;
  categoryCopy = category;
  if (!partyCopy || ([partyCopy hasPrefix:@"com.apple."] & 1) != 0)
  {
    goto LABEL_3;
  }

  v9 = [self describeCategory:6011];
  if ([categoryCopy isEqualToString:v9])
  {
    goto LABEL_7;
  }

  v10 = [self describeCategory:6009];
  if ([categoryCopy isEqualToString:v10])
  {

LABEL_7:
LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  v12 = [self describeCategory:6016];
  v13 = [categoryCopy isEqualToString:v12];

  if (v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  v8 = 0;
LABEL_9:

  return v8;
}

+ (BOOL)isValidThirdPartyEvent:(id)event bundleCategory:(id)category mediaTypeString:(id)string playTime:(double)time
{
  eventCopy = event;
  categoryCopy = category;
  stringCopy = string;
  if (!eventCopy || ([eventCopy hasPrefix:@"com.apple."] & 1) != 0)
  {
    goto LABEL_3;
  }

  v15 = [self describeCategory:6011];
  v16 = [categoryCopy isEqualToString:v15];
  if (time >= 90.0 && (v16 & 1) != 0)
  {

    goto LABEL_8;
  }

  v17 = [self describeCategory:6009];
  v18 = [categoryCopy isEqualToString:v17];
  if (v18)
  {
    if (time < 600.0 || !stringCopy)
    {
      goto LABEL_21;
    }

LABEL_16:
    lowercaseString = [stringCopy lowercaseString];
    v21 = [lowercaseString containsString:@"podcast"];

    if ((v18 & 1) == 0)
    {
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = 1;
    goto LABEL_4;
  }

  self = [self describeCategory:6016];
  v19 = [categoryCopy isEqualToString:self];
  if (stringCopy && time >= 600.0 && (v19 & 1) != 0)
  {
    goto LABEL_16;
  }

LABEL_21:
LABEL_3:
  v13 = 0;
LABEL_4:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = self->_title;
  v16 = coderCopy;
  if (title)
  {
    [coderCopy encodeObject:title forKey:@"title"];
    coderCopy = v16;
  }

  album = self->_album;
  if (album)
  {
    [v16 encodeObject:album forKey:@"album"];
    coderCopy = v16;
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v16 encodeObject:bundleId forKey:@"bundleId"];
    coderCopy = v16;
  }

  productId = self->_productId;
  if (productId)
  {
    [v16 encodeObject:productId forKey:@"productId"];
    coderCopy = v16;
  }

  genre = self->_genre;
  if (genre)
  {
    [v16 encodeObject:genre forKey:@"genre"];
    coderCopy = v16;
  }

  mediaType = self->_mediaType;
  if (mediaType)
  {
    [v16 encodeObject:mediaType forKey:@"mediaType"];
    coderCopy = v16;
  }

  artist = self->_artist;
  if (artist)
  {
    [v16 encodeObject:artist forKey:@"artist"];
    coderCopy = v16;
  }

  startDate = self->_startDate;
  if (startDate)
  {
    [v16 encodeObject:startDate forKey:@"startDate"];
    coderCopy = v16;
  }

  endDate = self->_endDate;
  if (endDate)
  {
    [v16 encodeObject:endDate forKey:@"endDate"];
    coderCopy = v16;
  }

  duration = self->_duration;
  if (duration)
  {
    [v16 encodeInt32:duration forKey:@"duration"];
    coderCopy = v16;
  }

  [coderCopy encodeBool:self->_isRemote forKey:@"isRemote"];
  deviceSource = self->_deviceSource;
  if (deviceSource)
  {
    [v16 encodeObject:deviceSource forKey:@"deviceSource"];
  }

  if (self->_bgColor)
  {
    [v16 encodeObject:self->_deviceSource forKey:@"bkColor"];
  }
}

+ (id)redactString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && [stringCopy length])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [v4 length];
    if (v6 >> 1 >= 5)
    {
      v7 = 5;
    }

    else
    {
      v7 = v6 >> 1;
    }

    v8 = [v4 substringToIndex:v7];
    v9 = [v5 stringWithFormat:@"%@.%lu", v8, objc_msgSend(v4, "hash")];
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (id)description
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setCalendar:currentCalendar];
  [v4 setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
  v5 = [v4 stringFromDate:self->_startDate];
  v6 = [v4 stringFromDate:self->_endDate];
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  redactedTitle = [(MOMediaPlaySession *)self redactedTitle];
  redactedAlbum = [(MOMediaPlaySession *)self redactedAlbum];
  mediaType = self->_mediaType;
  v11 = [v7 initWithFormat:@"<MOMediaPlaySession | title:%@ album:%@ mediaType:%@ bundleId:%@ startDate:%@ endDate:%@ isRemote:%d deviceSource:%@>", redactedTitle, redactedAlbum, mediaType, self->_bundleId, v5, v6, self->_isRemote, self->_deviceSource];

  return v11;
}

+ (id)getMOPlaySessionMediaType:(id)type bundleId:(id)id
{
  typeCopy = type;
  idCopy = id;
  v7 = idCopy;
  if (idCopy && ![idCopy hasPrefix:@"com.apple."])
  {
    v9 = &unk_284100AC8;
  }

  else if (typeCopy)
  {
    lowercaseString = [typeCopy lowercaseString];
    if ([lowercaseString containsString:@"music"])
    {
      v9 = &unk_284100AF8;
    }

    else if ([lowercaseString containsString:@"podcast"])
    {
      v9 = &unk_284100B10;
    }

    else if ([lowercaseString containsString:@"video"])
    {
      v9 = &unk_284100B28;
    }

    else
    {
      v9 = &unk_284100B40;
    }
  }

  else
  {
    v9 = &unk_284100AE0;
  }

  return v9;
}

+ (id)describeCategory:(int)category
{
  if ((category - 6000) >= 0x16)
  {
    category = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%lu)", category];
  }

  else
  {
    category = off_2787739F8[category - 6000];
  }

  return category;
}

+ (BOOL)isFirstPartyApp:(id)app
{
  appCopy = app;
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_284100630];
  v5 = v4;
  v6 = appCopy && ([v4 containsObject:appCopy] & 1) != 0;

  return v6;
}

- (void)initWithTitle:album:bundleId:productId:genre:mediaType:artist:startDate:endDate:duration:isRemote:deviceSource:bgColor:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 33;
  _os_log_error_impl(&dword_22D8C5000, v0, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate != nil (in %s:%d)", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithTitle:album:bundleId:productId:genre:mediaType:artist:startDate:endDate:duration:isRemote:deviceSource:bgColor:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 34;
  _os_log_error_impl(&dword_22D8C5000, v0, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate != nil (in %s:%d)", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end