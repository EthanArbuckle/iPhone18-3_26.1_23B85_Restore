@interface OAMessages
+ (void)initialize;
@end

@implementation OAMessages

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    objc_opt_class();
    v2 = [TCTaggedMessage alloc];
    v29 = TCBundle();
    v3 = [v29 localizedStringForKey:@"Some shape value:image table:{graphic content was unreadable.", &stru_286EE1130, @"TCCompatibility"}];
    v4 = [(TCTaggedMessage *)v2 initWithMessageText:v3];
    v5 = OABadFormat;
    OABadFormat = v4;

    v6 = [TCTaggedMessage alloc];
    v30 = TCBundle();
    v7 = [v30 localizedStringForKey:@"MathType equations in unsupported formats were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v8 = [(TCTaggedMessage *)v6 initWithMessageText:v7];
    v9 = OARemovedMathTypeEquations;
    OARemovedMathTypeEquations = v8;

    v10 = [TCTaggedMessage alloc];
    v31 = TCBundle();
    v11 = [v31 localizedStringForKey:@"Equations requiring unsupported MathML elements were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v12 = [(TCTaggedMessage *)v10 initWithMessageText:v11];
    v13 = OAUnsupportedMathMLDropped;
    OAUnsupportedMathMLDropped = v12;

    v14 = [TCTaggedMessage alloc];
    v32 = TCBundle();
    v15 = [v32 localizedStringForKey:@"Objects positioned far away from slides were moved closer to slides." value:&stru_286EE1130 table:@"TCCompatibility"];
    v16 = [(TCTaggedMessage *)v14 initWithMessageText:v15];
    v17 = OADrawableBoundsOutOfRange;
    OADrawableBoundsOutOfRange = v16;

    v18 = [TCTaggedMessage alloc];
    v19 = [(TCTaggedMessage *)v18 initWithMessageText:kWarningMessageUnsupportedMediaTypes];
    v20 = OAUnsupportedMediaType;
    OAUnsupportedMediaType = v19;

    v21 = [TCTaggedMessage alloc];
    v33 = TCBundle();
    v22 = [v33 localizedStringForKey:@"URL-based movies and audio files were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v23 = [(TCTaggedMessage *)v21 initWithMessageText:v22];
    v24 = OARemovedUrlMedia;
    OARemovedUrlMedia = v23;

    v25 = [TCTaggedMessage alloc];
    v34 = TCBundle();
    v26 = [v34 localizedStringForKey:@"Movies and audio files weren\\U2019t exported." value:&stru_286EE1130 table:@"TCCompatibility"];
    v27 = [(TCTaggedMessage *)v25 initWithMessageText:v26];
    v28 = OAMediaNotExported;
    OAMediaNotExported = v27;
  }
}

@end