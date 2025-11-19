@interface GEOLPRLicensePlateRestrictionRules(MNExtras)
- (id)plateRegionsContainingLatLngs:()MNExtras inRadius:;
@end

@implementation GEOLPRLicensePlateRestrictionRules(MNExtras)

- (id)plateRegionsContainingLatLngs:()MNExtras inRadius:
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "licensePlateRegionsCount")}];
  v8 = [a1 licensePlateRegions];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__GEOLPRLicensePlateRestrictionRules_MNExtras__plateRegionsContainingLatLngs_inRadius___block_invoke;
  v14[3] = &unk_1E842AEB0;
  v15 = v6;
  v17 = a2;
  v9 = v7;
  v16 = v9;
  v10 = v6;
  [v8 enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

@end