@interface JSAdsObject
- (_TtC12GameStoreKit11JSAdsObject)init;
- (id)fetchAppBinaryTraitsOverride;
- (id)fetchInstallStatesForAdverts:(id)a3;
- (id)fetchOnDeviceAdPlacement:(id)a3 :(double)a4 :(id)a5 :(id)a6;
- (id)getIdentifierForMissedOpportunity:(id)a3;
- (id)isNativeAdLoggingEnabled;
- (id)processAdvertsForSponsoredSearch:(id)a3 :(id)a4 :(id)a5 :(double)a6 :(BOOL)a7;
- (void)debugLog:(id)a3;
- (void)setTimeoutForCurrentOnDeviceAdFetch:(id)a3 :(double)a4;
@end

@implementation JSAdsObject

- (id)fetchInstallStatesForAdverts:(id)a3
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v5 = a3;
  v6 = self;
  v7 = sub_24F92C448();
  v8 = sub_24F92C458();

  return v8;
}

- (id)processAdvertsForSponsoredSearch:(id)a3 :(id)a4 :(id)a5 :(double)a6 :(BOOL)a7
{
  HIDWORD(v24) = a7;
  v25 = sub_24F922028();
  v11 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F92B0D8();
  v16 = v15;
  sub_24F929778();
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v20 = sub_24F929768();
  sub_24F921FE8();

  sub_24E69A5C4(0, &qword_27F21C8C8);
  v21 = sub_24F92C448();
  v26 = v19;
  v27 = v17;
  v28 = v18;
  v29 = v14;
  v30 = v16;
  v31 = BYTE4(v24);
  v32 = a6;
  v33 = "JSAdsObject.processAdvertsForSponsoredSearch";
  v34 = 44;
  v35 = 2;
  v36 = v13;
  v22 = sub_24F92C458();

  (*(v11 + 8))(v13, v25);

  return v22;
}

- (id)fetchOnDeviceAdPlacement:(id)a3 :(double)a4 :(id)a5 :(id)a6
{
  v10 = sub_24F92B0D8();
  v12 = v11;
  if (a5)
  {
    a5 = sub_24F92AE38();
  }

  if (a6)
  {
    v13 = sub_24F92B0D8();
    a6 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = self;
  v16 = sub_24EDBEA04(v10, v12, a5, v13, a6, a4);

  return v16;
}

- (void)setTimeoutForCurrentOnDeviceAdFetch:(id)a3 :(double)a4
{
  v6 = sub_24F92B0D8();
  v8 = v7;
  v9 = self;
  sub_24EDBFCC4(v6, v8, a4);
}

- (id)isNativeAdLoggingEnabled
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v3 = self;
  v4 = sub_24F92C448();
  v5 = sub_24F92C458();

  return v5;
}

- (void)debugLog:(id)a3
{
  v4 = sub_24F92B0D8();
  v6 = v5;
  v7 = self;
  sub_24EDC0EF0(v4, v6);
}

- (id)fetchAppBinaryTraitsOverride
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v2 = sub_24F92C448();
  v3 = sub_24F92C458();

  return v3;
}

- (id)getIdentifierForMissedOpportunity:(id)a3
{
  sub_24F92B0D8();
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v4 = self;
  v5 = sub_24F92C448();
  v6 = sub_24F92C458();

  return v6;
}

- (_TtC12GameStoreKit11JSAdsObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end