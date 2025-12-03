@interface DMIncident
+ (id)incidentWithKind:(unsigned int)kind responsiblePluginRep:(id)rep userDataDisposition:(id)disposition details:(id)details;
@end

@implementation DMIncident

+ (id)incidentWithKind:(unsigned int)kind responsiblePluginRep:(id)rep userDataDisposition:(id)disposition details:(id)details
{
  repCopy = rep;
  dispositionCopy = disposition;
  detailsCopy = details;
  v13 = objc_alloc_init(DMIncident);
  v13->_kind = kind;
  objc_storeStrong(&v13->_responsiblePluginRep, rep);
  v14 = [detailsCopy copy];
  details = v13->_details;
  v13->_details = v14;

  v16 = +[NSDate date];
  date = v13->_date;
  v13->_date = v16;

  v18 = objc_alloc_init(NSMutableArray);
  v19 = v18;
  if (detailsCopy)
  {
    [v18 addObject:detailsCopy];
  }

  if (dispositionCopy)
  {
    v20 = [DMUserDataDispositionManager descriptionFromDispositionFlags:[DMUserDataDispositionManager dispositionFlagsFromDispositionDict:dispositionCopy]];
    if (v20)
    {
      v21 = [NSString stringWithFormat:@"(%@)", v20];
      [v19 addObject:v21];
    }

    v22 = [dispositionCopy objectForKeyedSubscript:@"previousBuildVersion"];
    if (v22)
    {
      v23 = [NSString stringWithFormat:@"(prev build %@)", v22];
      [v19 addObject:v23];
    }
  }

  v24 = [v19 componentsJoinedByString:@" "];
  diagnosticMessage = v13->_diagnosticMessage;
  v13->_diagnosticMessage = v24;

  return v13;
}

@end