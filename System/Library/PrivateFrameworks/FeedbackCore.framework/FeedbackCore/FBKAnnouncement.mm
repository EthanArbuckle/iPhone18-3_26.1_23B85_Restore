@interface FBKAnnouncement
- (id)fullHTMLContent;
- (id)generateSearchText;
- (void)setPropertiesFromJSONObject:(id)object;
@end

@implementation FBKAnnouncement

- (void)setPropertiesFromJSONObject:(id)object
{
  objectCopy = object;
  v4 = [objectCopy objectForKeyedSubscript:@"title"];
  v5 = FBKNilIfNSNull(v4);
  if (v5)
  {
    [(FBKAnnouncement *)self setTitle:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"AppleSeed Announcement" value:&stru_1F5F14EC0 table:0];
    [(FBKAnnouncement *)self setTitle:v7];
  }

  v8 = [objectCopy objectForKeyedSubscript:@"type"];
  v9 = FBKNilIfNSNull(v8);
  [(FBKAnnouncement *)self setType:v9];

  v10 = [objectCopy objectForKeyedSubscript:@"created_at"];
  v11 = FBKNilIfNSNull(v10);

  if (v11)
  {
    v12 = FBKDateFromServerString(v11);
    [(FBKAnnouncement *)self setCreatedAt:v12];
  }

  else
  {
    [(FBKAnnouncement *)self setCreatedAt:0];
  }

  v13 = [objectCopy objectForKeyedSubscript:@"updated_at"];
  v14 = FBKNilIfNSNull(v13);

  if (v14)
  {
    v15 = FBKDateFromServerString(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = [objectCopy objectForKeyedSubscript:@"body"];
  v17 = FBKNilIfNSNull(v16);

  if (v17)
  {
    [(FBKAnnouncement *)self setBody:v17];
    selfCopy2 = self;
    v19 = 0;
LABEL_21:
    [(FBKAnnouncement *)selfCopy2 setIsStub:v19];
    goto LABEL_22;
  }

  updatedAt = [(FBKAnnouncement *)self updatedAt];
  v21 = updatedAt;
  if (!updatedAt || !v15)
  {

    goto LABEL_20;
  }

  body = [(FBKAnnouncement *)self body];

  if (!body)
  {
LABEL_20:
    selfCopy2 = self;
    v19 = 1;
    goto LABEL_21;
  }

  updatedAt2 = [(FBKAnnouncement *)self updatedAt];
  v24 = [v15 compare:updatedAt2];
  isStub = [(FBKAnnouncement *)self isStub];
  if (v24 == 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = isStub;
  }

  [(FBKAnnouncement *)self setIsStub:v26];

LABEL_22:
  [(FBKAnnouncement *)self setUpdatedAt:v15];
  v27 = [objectCopy objectForKeyedSubscript:@"acknowledged?"];
  v28 = FBKNilIfNSNull(v27);

  if (v28)
  {
    -[FBKAnnouncement setUnread:](self, "setUnread:", [v28 BOOLValue] ^ 1);
  }
}

- (id)fullHTMLContent
{
  if (fullHTMLContent_onceToken != -1)
  {
    [FBKAnnouncement fullHTMLContent];
  }

  cachedFullHTMLContent = [(FBKAnnouncement *)self cachedFullHTMLContent];
  if (!cachedFullHTMLContent || (v4 = cachedFullHTMLContent, -[FBKAnnouncement cachedFullHTMLContent](self, "cachedFullHTMLContent"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, !v6))
  {
    body = [(FBKAnnouncement *)self body];
    v8 = [body rangeOfString:@"<html>" options:1];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = fullHTMLContent__announcementTemplate;
      body2 = [(FBKAnnouncement *)self body];
      v11 = [v9 stringByReplacingOccurrencesOfString:@"{{ANNOUNCEMENT_CONTENT}}" withString:body2];
      [(FBKAnnouncement *)self setCachedFullHTMLContent:v11];

      cachedFullHTMLContent2 = [(FBKAnnouncement *)self cachedFullHTMLContent];
      v13 = cachedFullHTMLContent2;
      v14 = @"target=_blank";
      v15 = &stru_1F5F14EC0;
    }

    else
    {
      cachedFullHTMLContent2 = [(FBKAnnouncement *)self body];
      v13 = cachedFullHTMLContent2;
      v14 = @"<head>";
      v15 = @"<head>\n<meta name=viewport content=width=device-width, initial-scale=1>\n";
    }

    v16 = [cachedFullHTMLContent2 stringByReplacingOccurrencesOfString:v14 withString:v15];
    [(FBKAnnouncement *)self setCachedFullHTMLContent:v16];
  }

  cachedFullHTMLContent3 = [(FBKAnnouncement *)self cachedFullHTMLContent];

  return cachedFullHTMLContent3;
}

void __34__FBKAnnouncement_fullHTMLContent__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 URLForResource:@"AnnouncementContent" withExtension:@"html"];

  v7 = 0;
  v2 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v1 encoding:4 error:&v7];
  v3 = v7;
  v4 = fullHTMLContent__announcementTemplate;
  fullHTMLContent__announcementTemplate = v2;

  if (v3)
  {
    v5 = +[FBKLog appHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __34__FBKAnnouncement_fullHTMLContent__block_invoke_cold_1(v3, v5);
    }

    v6 = fullHTMLContent__announcementTemplate;
    fullHTMLContent__announcementTemplate = &stru_1F5F14EC0;
  }
}

- (id)generateSearchText
{
  v42 = *MEMORY[0x1E69E9840];
  body = [(FBKAnnouncement *)self body];

  if (body)
  {
    v4 = [FBKXMLDocument alloc];
    fullHTMLContent = [(FBKAnnouncement *)self fullHTMLContent];
    v6 = [(FBKXMLDocument *)v4 initWithHTMLString:fullHTMLContent];

    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
@end