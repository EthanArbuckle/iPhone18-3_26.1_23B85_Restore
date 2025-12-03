@interface HealthAppDataTypeDetailLinkBuilder
- (id)URLForDataTypeDetailWithObjectType:(id)type date:(id)date trendOverlay:(int64_t)overlay;
- (id)URLForDataTypeDetailWithObjectType:(id)type dateInterval:(id)interval trendOverlay:(int64_t)overlay;
- (id)URLForDataTypeDetailWithObjectType:(id)type trendOverlay:(int64_t)overlay;
- (id)baseURLComponentsWithObjectType:(id)type trendOverlay:(int64_t)overlay;
- (id)baseURLForObjectType:(id)type;
- (id)standardBaseURLForObjectType:(id)type;
@end

@implementation HealthAppDataTypeDetailLinkBuilder

- (id)URLForDataTypeDetailWithObjectType:(id)type trendOverlay:(int64_t)overlay
{
  v5 = [(HealthAppDataTypeDetailLinkBuilder *)self baseURLComponentsWithObjectType:type trendOverlay:overlay];
  v6 = [v5 URL];
  profileIdentifier = [(HealthAppLinkBuilder *)self profileIdentifier];
  v8 = [v6 _hk_appendProfileIdentifier:profileIdentifier];

  return v8;
}

- (id)URLForDataTypeDetailWithObjectType:(id)type date:(id)date trendOverlay:(int64_t)overlay
{
  v29[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v9 = [(HealthAppDataTypeDetailLinkBuilder *)self baseURLComponentsWithObjectType:type trendOverlay:overlay];
  queryItems = [v9 queryItems];
  v11 = [queryItems mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v14 = v13;

  v15 = MEMORY[0x277CCABB0];
  [dateCopy timeIntervalSinceReferenceDate];
  v17 = v16;

  v18 = [v15 numberWithInteger:v17];
  v19 = MEMORY[0x277CCAD18];
  v20 = +[HAServicesDefines queryParameterNameDate];
  stringValue = [v18 stringValue];
  v22 = [v19 queryItemWithName:v20 value:stringValue];
  v29[0] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  [v14 addObjectsFromArray:v23];

  [v9 setQueryItems:v14];
  v24 = [v9 URL];
  profileIdentifier = [(HealthAppLinkBuilder *)self profileIdentifier];
  v26 = [v24 _hk_appendProfileIdentifier:profileIdentifier];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)URLForDataTypeDetailWithObjectType:(id)type dateInterval:(id)interval trendOverlay:(int64_t)overlay
{
  v38[2] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  selfCopy = self;
  v9 = [(HealthAppDataTypeDetailLinkBuilder *)self baseURLComponentsWithObjectType:type trendOverlay:overlay];
  queryItems = [v9 queryItems];
  v11 = [queryItems mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v14 = v13;

  v15 = MEMORY[0x277CCABB0];
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v36 = [v15 numberWithInteger:v17];

  v18 = MEMORY[0x277CCABB0];
  endDate = [intervalCopy endDate];

  [endDate timeIntervalSinceReferenceDate];
  v21 = [v18 numberWithInteger:v20];

  v22 = MEMORY[0x277CCAD18];
  v23 = +[HAServicesDefines queryParameterNameStartDate];
  stringValue = [v36 stringValue];
  v25 = [v22 queryItemWithName:v23 value:stringValue];
  v38[0] = v25;
  v26 = MEMORY[0x277CCAD18];
  v27 = +[HAServicesDefines queryParameterNameEndDate];
  stringValue2 = [v21 stringValue];
  v29 = [v26 queryItemWithName:v27 value:stringValue2];
  v38[1] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  [v14 addObjectsFromArray:v30];

  [v9 setQueryItems:v14];
  v31 = [v9 URL];
  profileIdentifier = [(HealthAppLinkBuilder *)selfCopy profileIdentifier];
  v33 = [v31 _hk_appendProfileIdentifier:profileIdentifier];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)baseURLComponentsWithObjectType:(id)type trendOverlay:(int64_t)overlay
{
  v6 = [(HealthAppDataTypeDetailLinkBuilder *)self baseURLForObjectType:type];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v6 resolvingAgainstBaseURL:0];
    queryItems = [v7 queryItems];
    v9 = [queryItems mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v12 = v11;

    if (overlay)
    {
      overlay = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", overlay];
      v14 = MEMORY[0x277CCAD18];
      v15 = +[HAServicesDefines queryParameterNameTrendOverlay];
      v16 = [v14 queryItemWithName:v15 value:overlay];
      [v12 addObject:v16];
    }

    source = [(HealthAppLinkBuilder *)self source];
    if (source)
    {
      v18 = source;
      source2 = [(HealthAppLinkBuilder *)self source];
      v20 = [source2 length];

      if (v20)
      {
        v21 = MEMORY[0x277CCAD18];
        v22 = +[HAServicesDefines queryParameterNameSource];
        source3 = [(HealthAppLinkBuilder *)self source];
        v24 = [v21 queryItemWithName:v22 value:source3];
        [v12 addObject:v24];
      }
    }

    if ([v12 count])
    {
      [v7 setQueryItems:v12];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)standardBaseURLForObjectType:(id)type
{
  typeCopy = type;
  v5 = objc_alloc_init(MEMORY[0x277CCACE0]);
  queryItems = [v5 queryItems];
  v7 = [queryItems mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v10 = v9;

  if ([(HealthAppLinkBuilder *)self useExternalURLScheme])
  {
    v11 = +[HAServicesDefines externalHealthAppURLScheme];
    [v5 setScheme:v11];

    v12 = +[HAServicesDefines externalHealthAppURLHost];
    [v5 setHost:v12];
  }

  else
  {
    v12 = +[HAServicesDefines internalHealthAppURLScheme];
    [v5 setScheme:v12];
  }

  profileIdentifier = [(HealthAppLinkBuilder *)self profileIdentifier];
  type = [profileIdentifier type];

  if ((type - 2) >= 2)
  {
    if (type != 1)
    {
      v23 = 0;
      goto LABEL_20;
    }

    if (![(HealthAppLinkBuilder *)self useExternalURLScheme])
    {
      v25 = +[HAServicesDefines sampleTypeHostName];
      [v5 setHost:v25];

      v26 = MEMORY[0x277CCACA8];
      identifier = [typeCopy identifier];
      identifier2 = [v26 stringWithFormat:@"/%@", identifier];
      [v5 setPath:identifier2];
      goto LABEL_16;
    }

    v18 = MEMORY[0x277CCACA8];
    identifier = +[HAServicesDefines sampleTypeHostName];
    identifier2 = [typeCopy identifier];
    v21 = [v18 stringWithFormat:@"/%@/%@", identifier, identifier2];
    [v5 setPath:v21];
  }

  else
  {
    if ([(HealthAppLinkBuilder *)self useExternalURLScheme])
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = +[HAServicesDefines dataTypeDetailHostName];
      v17 = [v15 stringWithFormat:@"/%@", v16];
      [v5 setPath:v17];
    }

    else
    {
      v16 = +[HAServicesDefines dataTypeDetailHostName];
      [v5 setHost:v16];
    }

    identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(typeCopy, "code")];
    v22 = MEMORY[0x277CCAD18];
    identifier2 = +[HAServicesDefines queryParameterNameDataTypeCode];
    v21 = [v22 queryItemWithName:identifier2 value:identifier];
    [v10 addObject:v21];
  }

LABEL_16:
  if ([v10 count])
  {
    [v5 setQueryItems:v10];
  }

  v23 = [v5 URL];
LABEL_20:

  return v23;
}

- (id)baseURLForObjectType:(id)type
{
  typeCopy = type;
  v5 = 0;
  switch([typeCopy code])
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 12:
    case 13:
    case 14:
    case 15:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 60:
    case 61:
    case 62:
    case 63:
    case 70:
    case 71:
    case 72:
    case 73:
    case 75:
    case 78:
    case 79:
    case 80:
    case 83:
    case 87:
    case 89:
    case 90:
    case 91:
    case 92:
    case 95:
    case 96:
    case 97:
    case 99:
    case 100:
    case 101:
    case 110:
    case 111:
    case 113:
    case 114:
    case 118:
    case 124:
    case 125:
    case 137:
    case 138:
    case 139:
    case 140:
    case 144:
    case 145:
    case 147:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 178:
    case 179:
    case 182:
    case 183:
    case 186:
    case 187:
    case 188:
    case 189:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 199:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 240:
    case 241:
    case 242:
    case 243:
    case 244:
    case 248:
    case 249:
    case 250:
    case 251:
    case 254:
    case 256:
    case 257:
    case 258:
    case 259:
    case 260:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 269:
    case 270:
    case 272:
    case 274:
    case 275:
    case 276:
    case 277:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 286:
    case 287:
    case 288:
    case 294:
    case 295:
    case 296:
    case 297:
    case 301:
    case 302:
    case 303:
    case 305:
    case 313:
    case 314:
    case 341:
      v5 = [(HealthAppDataTypeDetailLinkBuilder *)self standardBaseURLForObjectType:typeCopy];
      break;
    default:
      break;
  }

  return v5;
}

@end