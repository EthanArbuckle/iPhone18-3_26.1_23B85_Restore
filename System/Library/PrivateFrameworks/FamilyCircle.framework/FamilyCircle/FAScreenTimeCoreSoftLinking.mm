@interface FAScreenTimeCoreSoftLinking
- (BOOL)isScreenTimePasscodeSet;
- (id)agePresetKeyAllowAppRemoval;
- (id)agePresetKeyAllowBookstoreErotica;
- (id)agePresetKeyAllowExplicitContent;
- (id)agePresetKeyAllowExternalIntelligenceIntegrations;
- (id)agePresetKeyAllowWritingTools;
- (id)agePresetKeyForceAssistantProfanityFilter;
- (id)agePresetKeyPresetOnlyImageGeneration;
- (id)agePresetKeyRatingApps;
- (id)agePresetKeyRatingMovies;
- (id)agePresetKeyRatingTVShows;
- (id)agePresetKeySTCustomRestrictionWebFilterState;
@end

@implementation FAScreenTimeCoreSoftLinking

- (BOOL)isScreenTimePasscodeSet
{
  v2 = objc_alloc_init(sub_100004D24());
  isRestrictionsPasscodeSet = [v2 isRestrictionsPasscodeSet];

  return isRestrictionsPasscodeSet;
}

- (id)agePresetKeySTCustomRestrictionWebFilterState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98C8;
  v10 = qword_1000B98C8;
  if (!qword_1000B98C8)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeySTCustomRestrictionWebFilterState");
    qword_1000B98C8 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyAllowExplicitContent
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98D0;
  v10 = qword_1000B98D0;
  if (!qword_1000B98D0)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyAllowExplicitContent");
    qword_1000B98D0 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyPresetOnlyImageGeneration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98D8;
  v10 = qword_1000B98D8;
  if (!qword_1000B98D8)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyPresetOnlyImageGeneration");
    qword_1000B98D8 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyRatingMovies
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98E0;
  v10 = qword_1000B98E0;
  if (!qword_1000B98E0)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyRatingMovies");
    qword_1000B98E0 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyRatingTVShows
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98E8;
  v10 = qword_1000B98E8;
  if (!qword_1000B98E8)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyRatingTVShows");
    qword_1000B98E8 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyAllowBookstoreErotica
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98F0;
  v10 = qword_1000B98F0;
  if (!qword_1000B98F0)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyAllowBookstoreErotica");
    qword_1000B98F0 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyAllowExternalIntelligenceIntegrations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B98F8;
  v10 = qword_1000B98F8;
  if (!qword_1000B98F8)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyAllowExternalIntelligenceIntegrations");
    qword_1000B98F8 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyForceAssistantProfanityFilter
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B9900;
  v10 = qword_1000B9900;
  if (!qword_1000B9900)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyForceAssistantProfanityFilter");
    qword_1000B9900 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyAllowWritingTools
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B9908;
  v10 = qword_1000B9908;
  if (!qword_1000B9908)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyAllowWritingTools");
    qword_1000B9908 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyAllowAppRemoval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B9910;
  v10 = qword_1000B9910;
  if (!qword_1000B9910)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyAllowAppRemoval");
    qword_1000B9910 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

- (id)agePresetKeyRatingApps
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = qword_1000B9918;
  v10 = qword_1000B9918;
  if (!qword_1000B9918)
  {
    v3 = sub_100005B64();
    v8[3] = dlsym(v3, "STAgePresetKeyRatingApps");
    qword_1000B9918 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = sub_100077D1C();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

@end