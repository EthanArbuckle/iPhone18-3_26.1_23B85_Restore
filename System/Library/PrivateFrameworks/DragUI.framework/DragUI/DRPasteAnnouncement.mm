@interface DRPasteAnnouncement
+ (BOOL)_canCoalesceEndpoint:(id)endpoint withEndpoint:(id)withEndpoint;
- (BOOL)canCoalesceWithAnnouncement:(id)announcement;
- (DRPasteAnnouncement)initWithCoder:(id)coder;
- (DRPasteAnnouncement)initWithSource:(id)source destination:(id)destination pasteboardUUID:(id)d timeout:(double)timeout;
- (id)_localizedTextRequiringAuthorization:(BOOL)authorization;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DRPasteAnnouncement

- (DRPasteAnnouncement)initWithSource:(id)source destination:(id)destination pasteboardUUID:(id)d timeout:(double)timeout
{
  sourceCopy = source;
  destinationCopy = destination;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = DRPasteAnnouncement;
  v14 = [(DRPasteAnnouncement *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_source, source);
    objc_storeStrong(&v15->_destination, destination);
    objc_storeStrong(&v15->_pasteboardUUID, d);
    v15->_timeout = timeout;
  }

  return v15;
}

- (DRPasteAnnouncement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pasteboardUUID"];
  [coderCopy decodeDoubleForKey:@"timeout"];
  v9 = v8;

  v10 = [(DRPasteAnnouncement *)self initWithSource:v5 destination:v6 pasteboardUUID:v7 timeout:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  source = self->_source;
  coderCopy = coder;
  [coderCopy encodeObject:source forKey:@"source"];
  [coderCopy encodeObject:self->_destination forKey:@"destination"];
  [coderCopy encodeObject:self->_pasteboardUUID forKey:@"pasteboardUUID"];
  [coderCopy encodeDouble:@"timeout" forKey:self->_timeout];
}

- (id)_localizedTextRequiringAuthorization:(BOOL)authorization
{
  authorizationCopy = authorization;
  if (_localizedTextRequiringAuthorization__onceToken != -1)
  {
    [DRPasteAnnouncement _localizedTextRequiringAuthorization:];
  }

  destination = self->_destination;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localizedName = [(DRPasteAnnouncementEndpoint *)self->_destination localizedName];
    source = self->_source;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = self->_source;
    if (isKindOfClass)
    {
      localizedName2 = [(DRPasteAnnouncementEndpoint *)self->_source localizedName];
      if (authorizationCopy)
      {
        v11 = @"PASTE_AUTHORIZATION_REQUEST_SOURCE_AND_DESTINATION";
        v12 = @"%@ would like to paste from %@";
      }

      else
      {
        v11 = @"PASTE_ANNOUNCEMENT_SOURCE_AND_DESTINATION";
        v12 = @"%@ pasted from %@";
      }

      v17 = [_localizedTextRequiringAuthorization__DRBundle localizedStringForKey:v11 value:v12 table:@"Localizable"];
      v26 = 0;
      v18 = &v26;
      [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v17 validFormatSpecifiers:@"%@%@" error:&v26, localizedName, localizedName2];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = 0;
        v17 = 0;
        goto LABEL_24;
      }

      localizedName2 = [(DRPasteAnnouncementEndpoint *)self->_source deviceName];
      if (localizedName2)
      {
        if (authorizationCopy)
        {
          v15 = @"PASTE_AUTHORIZATION_REQUEST_FROM_CONTINUITY_DEVICE";
          v16 = @"%@ would like to paste from %@";
        }

        else
        {
          v15 = @"PASTE_ANNOUNCEMENT_FROM_CONTINUITY_DEVICE";
          v16 = @"%@ pasted from %@";
        }

        v17 = [_localizedTextRequiringAuthorization__DRBundle localizedStringForKey:v15 value:v16 table:@"Localizable"];
        v25 = 0;
        v18 = &v25;
        [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v17 validFormatSpecifiers:@"%@%@" error:&v25, localizedName, localizedName2];
      }

      else
      {
        if (authorizationCopy)
        {
          v19 = @"PASTE_AUTHORIZATION_REQUEST_FROM_UNKNOWN_CONTINUITY_DEVICE";
          v20 = @"%@ would like to paste from another device";
        }

        else
        {
          v19 = @"PASTE_ANNOUNCEMENT_FROM_UNKNOWN_CONTINUITY_DEVICE";
          v20 = @"%@ pasted from another device";
        }

        v17 = [_localizedTextRequiringAuthorization__DRBundle localizedStringForKey:v19 value:v20 table:@"Localizable"];
        v24 = 0;
        v18 = &v24;
        [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v17 validFormatSpecifiers:@"%@" error:&v24, localizedName, v23];
      }
    }
    v14 = ;
    v13 = *v18;

    if (v14)
    {
LABEL_27:

      goto LABEL_28;
    }

LABEL_24:
    v21 = DRLogTarget();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(DRPasteAnnouncement *)v13 _localizedTextRequiringAuthorization:v21];
    }

    v14 = @"PASTE OCCURRED";
    goto LABEL_27;
  }

  v13 = DRLogTarget();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [DRPasteAnnouncement _localizedTextRequiringAuthorization:v13];
  }

  v14 = @"PASTE OCCURRED";
LABEL_28:

  return v14;
}

uint64_t __60__DRPasteAnnouncement__localizedTextRequiringAuthorization___block_invoke()
{
  _localizedTextRequiringAuthorization__DRBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)canCoalesceWithAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  pasteboardUUID = self->_pasteboardUUID;
  pasteboardUUID = [announcementCopy pasteboardUUID];
  LODWORD(pasteboardUUID) = [(NSUUID *)pasteboardUUID isEqual:pasteboardUUID];

  if (pasteboardUUID && ([announcementCopy source], v7 = objc_claimAutoreleasedReturnValue(), v8 = +[DRPasteAnnouncement _canCoalesceEndpoint:withEndpoint:](DRPasteAnnouncement, "_canCoalesceEndpoint:withEndpoint:", v7, self->_source), v7, v8))
  {
    destination = [announcementCopy destination];
    v10 = [DRPasteAnnouncement _canCoalesceEndpoint:destination withEndpoint:self->_destination];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_canCoalesceEndpoint:(id)endpoint withEndpoint:(id)withEndpoint
{
  endpointCopy = endpoint;
  withEndpointCopy = withEndpoint;
  v7 = objc_opt_class();
  if ([v7 isEqual:objc_opt_class()])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [withEndpointCopy isSimilarToApplicationEndpoint:endpointCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = 1;
        goto LABEL_9;
      }

      v8 = [withEndpointCopy isSimilarToContinuityEndpoint:endpointCopy];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_9:

  return v9;
}

- (void)_localizedTextRequiringAuthorization:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_249D32000, a2, OS_LOG_TYPE_ERROR, "Invalid format string for paste announcement (error: %@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end