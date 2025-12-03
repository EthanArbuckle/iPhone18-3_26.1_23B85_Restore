@interface AddressingViewFactory
- (_TtC14CloudSharingUI21AddressingViewFactory)init;
- (_TtC14CloudSharingUI21AddressingViewFactory)initWithHeaderImageData:(id)data headerTitle:(id)title loadingText:(id)text supplementaryText:(id)supplementaryText userInfoText:(id)infoText primaryButtonText:(id)buttonText secondaryButtonText:(id)secondaryButtonText shouldAllowEmptyAddresses:(BOOL)self0 userDidClickPrimaryButton:(id)self1 userDidClickSecondaryButton:(id)self2 userDidClickShowContactPicker:(id)self3 userDidChangeAddresses:(id)self4;
- (void)addAddressFrom:(id)from contactProperty:(id)property;
- (void)updateWithHeaderImageData:(id)data headerTitle:(id)title loadingText:(id)text supplementaryText:(id)supplementaryText userInfoText:(id)infoText primaryButtonText:(id)buttonText secondaryButtonText:(id)secondaryButtonText;
@end

@implementation AddressingViewFactory

- (_TtC14CloudSharingUI21AddressingViewFactory)initWithHeaderImageData:(id)data headerTitle:(id)title loadingText:(id)text supplementaryText:(id)supplementaryText userInfoText:(id)infoText primaryButtonText:(id)buttonText secondaryButtonText:(id)secondaryButtonText shouldAllowEmptyAddresses:(BOOL)self0 userDidClickPrimaryButton:(id)self1 userDidClickSecondaryButton:(id)self2 userDidClickShowContactPicker:(id)self3 userDidChangeAddresses:(id)self4
{
  v70 = _Block_copy(button);
  v20 = _Block_copy(secondaryButton);
  v78 = _Block_copy(picker);
  v21 = _Block_copy(changeAddresses);
  if (data)
  {
    titleCopy = title;
    textCopy = text;
    supplementaryTextCopy = supplementaryText;
    infoTextCopy = infoText;
    buttonTextCopy = buttonText;
    secondaryButtonTextCopy = secondaryButtonText;
    dataCopy = data;
    v29 = sub_243B6FAAC();
    v76 = v30;
    v77 = v29;

    v31 = v20;
    if (title)
    {
      goto LABEL_3;
    }
  }

  else
  {
    titleCopy2 = title;
    textCopy2 = text;
    supplementaryTextCopy2 = supplementaryText;
    infoTextCopy2 = infoText;
    buttonTextCopy2 = buttonText;
    secondaryButtonTextCopy2 = secondaryButtonText;
    v76 = 0xF000000000000000;
    v77 = 0;
    v31 = v20;
    if (title)
    {
LABEL_3:
      v32 = sub_243B7082C();
      v74 = v33;
      v75 = v32;

      v34 = v21;
      if (text)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v74 = 0;
  v75 = 0;
  v34 = v21;
  if (text)
  {
LABEL_4:
    v35 = sub_243B7082C();
    v72 = v36;
    v73 = v35;

    if (supplementaryText)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v72 = 0;
  v73 = 0;
  if (supplementaryText)
  {
LABEL_5:
    v37 = sub_243B7082C();
    v68 = v38;
    v69 = v37;

    v39 = v70;
    if (infoText)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v68 = 0;
  v69 = 0;
  v39 = v70;
  if (infoText)
  {
LABEL_6:
    v71 = sub_243B7082C();
    v67 = v40;

    if (buttonText)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v71 = 0;
  v67 = 0;
  if (buttonText)
  {
LABEL_7:
    v41 = sub_243B7082C();
    v65 = v42;
    v66 = v41;

    if (secondaryButtonText)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v65 = 0;
  v66 = 0;
  if (secondaryButtonText)
  {
LABEL_8:
    v43 = sub_243B7082C();
    v63 = v44;
    v64 = v43;

    if (v39)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v63 = 0;
  v64 = 0;
  if (v39)
  {
LABEL_9:
    v45 = swift_allocObject();
    *(v45 + 16) = v39;
    v46 = sub_243B6EAC4;
    if (v31)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v46 = 0;
  v45 = 0;
  if (v31)
  {
LABEL_10:
    v47 = swift_allocObject();
    *(v47 + 16) = v31;
    v48 = sub_243B6EAC4;
    if (v78)
    {
      goto LABEL_11;
    }

LABEL_22:
    v50 = 0;
    v49 = 0;
    addressesCopy2 = addresses;
    if (v34)
    {
      goto LABEL_12;
    }

LABEL_23:
    v54 = 0;
    goto LABEL_24;
  }

LABEL_21:
  v48 = 0;
  v47 = 0;
  if (!v78)
  {
    goto LABEL_22;
  }

LABEL_11:
  v49 = swift_allocObject();
  *(v49 + 16) = v78;
  v50 = sub_243B6EAC4;
  addressesCopy2 = addresses;
  if (!v34)
  {
    goto LABEL_23;
  }

LABEL_12:
  v52 = swift_allocObject();
  v53 = v34;
  v34 = v52;
  *(v52 + 16) = v53;
  v54 = sub_243B6EA50;
LABEL_24:
  v79 = v46;
  v61 = sub_243B6DD7C(v77, v76, v75, v74, v73, v72, v69, v68, v71, v67, v66, v65, v64, v63, addressesCopy2, v46, v45, v48, v47, v50, v49, v54, v34);
  sub_243B2BFCC(v54);
  sub_243B2BFCC(v50);
  sub_243B2BFCC(v48);
  sub_243B2BFCC(v79);
  sub_243B58410(v77, v76);
  return v61;
}

- (void)updateWithHeaderImageData:(id)data headerTitle:(id)title loadingText:(id)text supplementaryText:(id)supplementaryText userInfoText:(id)infoText primaryButtonText:(id)buttonText secondaryButtonText:(id)secondaryButtonText
{
  if (data)
  {
    titleCopy = title;
    textCopy = text;
    supplementaryTextCopy = supplementaryText;
    infoTextCopy = infoText;
    buttonTextCopy = buttonText;
    secondaryButtonTextCopy = secondaryButtonText;
    selfCopy = self;
    dataCopy = data;
    v23 = sub_243B6FAAC();
    v50 = v24;
    v51 = v23;

    if (title)
    {
      goto LABEL_3;
    }
  }

  else
  {
    titleCopy2 = title;
    textCopy2 = text;
    supplementaryTextCopy2 = supplementaryText;
    infoTextCopy2 = infoText;
    buttonTextCopy2 = buttonText;
    secondaryButtonTextCopy2 = secondaryButtonText;
    selfCopy2 = self;
    v50 = 0xF000000000000000;
    v51 = 0;
    if (title)
    {
LABEL_3:
      v48 = sub_243B7082C();
      v49 = v25;

      if (text)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v48 = 0;
  v49 = 0;
  if (text)
  {
LABEL_4:
    v47 = sub_243B7082C();
    v27 = v26;

    if (supplementaryText)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v47 = 0;
  v27 = 0;
  if (supplementaryText)
  {
LABEL_5:
    v28 = sub_243B7082C();
    v30 = v29;

    if (infoText)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v28 = 0;
  v30 = 0;
  if (infoText)
  {
LABEL_6:
    v31 = sub_243B7082C();
    v33 = v32;

    if (buttonText)
    {
      goto LABEL_7;
    }

LABEL_14:
    v34 = 0;
    v36 = 0;
    if (secondaryButtonText)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v31 = 0;
  v33 = 0;
  if (!buttonText)
  {
    goto LABEL_14;
  }

LABEL_7:
  v34 = sub_243B7082C();
  v36 = v35;

  if (secondaryButtonText)
  {
LABEL_8:
    v37 = sub_243B7082C();
    v39 = v38;

    goto LABEL_16;
  }

LABEL_15:
  v37 = 0;
  v39 = 0;
LABEL_16:
  sub_243B6D230(v51, v50, v48, v49, v47, v27, v28, v30, v31, v33, v34, v36, v37, v39);

  sub_243B58410(v51, v50);
}

- (void)addAddressFrom:(id)from contactProperty:(id)property
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtC14CloudSharingUI21AddressingViewFactory_viewModel);
  fromCopy = from;
  propertyCopy = property;
  selfCopy = self;
  sub_243B584E0(from, property);
}

- (_TtC14CloudSharingUI21AddressingViewFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end