@interface HKEmergencyCardSummaryTableItem
- (BOOL)hasPresentableData;
- (UIEdgeInsets)separatorInset;
- (id)_cell;
- (id)initInEditMode:(BOOL)mode;
- (void)setData:(id)data;
@end

@implementation HKEmergencyCardSummaryTableItem

- (id)initInEditMode:(BOOL)mode
{
  modeCopy = mode;
  if (mode)
  {
    [(HKEmergencyCardSummaryTableItem *)a2 initInEditMode:?];
  }

  v6.receiver = self;
  v6.super_class = HKEmergencyCardSummaryTableItem;
  return [(HKEmergencyCardTableItem *)&v6 initInEditMode:modeCopy];
}

- (BOOL)hasPresentableData
{
  data = [(HKEmergencyCardTableItem *)self data];
  pictureData = [data pictureData];
  if (pictureData)
  {
    v5 = 1;
  }

  else
  {
    data2 = [(HKEmergencyCardTableItem *)self data];
    name = [data2 name];
    if (name)
    {
      v5 = 1;
    }

    else
    {
      data3 = [(HKEmergencyCardTableItem *)self data];
      gregorianBirthday = [data3 gregorianBirthday];
      if (gregorianBirthday)
      {
        v5 = 1;
      }

      else
      {
        data4 = [(HKEmergencyCardTableItem *)self data];
        height = [data4 height];
        if (height)
        {
          v5 = 1;
        }

        else
        {
          data5 = [(HKEmergencyCardTableItem *)self data];
          weight = [data5 weight];
          if (weight)
          {
            v5 = 1;
          }

          else
          {
            data6 = [(HKEmergencyCardTableItem *)self data];
            if ([data6 bloodType])
            {
              v5 = 1;
            }

            else
            {
              data7 = [(HKEmergencyCardTableItem *)self data];
              isOrganDonor = [data7 isOrganDonor];
              v5 = isOrganDonor != 0;
            }
          }
        }
      }
    }
  }

  return v5;
}

- (id)_cell
{
  cell = self->_cell;
  if (!cell)
  {
    v4 = objc_alloc_init(HKMedicalIDPersonSummaryCell);
    v5 = self->_cell;
    self->_cell = v4;

    [(HKMedicalIDPersonSummaryCell *)self->_cell setAccessoryType:[(HKEmergencyCardTableItem *)self isInEditMode]];
    cell = self->_cell;
  }

  return cell;
}

- (void)setData:(id)data
{
  v13.receiver = self;
  v13.super_class = HKEmergencyCardSummaryTableItem;
  dataCopy = data;
  [(HKEmergencyCardTableItem *)&v13 setData:dataCopy];
  v5 = [(HKEmergencyCardSummaryTableItem *)self _cell:v13.receiver];
  v6 = MEMORY[0x1E69DCAB8];
  pictureData = [dataCopy pictureData];
  v8 = [v6 imageWithData:pictureData];
  [v5 setPicture:v8];

  name = [dataCopy name];
  [v5 setName:name];

  gregorianBirthday = [dataCopy gregorianBirthday];
  [v5 setGregorianBirthday:gregorianBirthday];

  isOrganDonor = [dataCopy isOrganDonor];
  [v5 setOrganDonationStatus:isOrganDonor];

  [v5 setShareOnLockScreen:{objc_msgSend(dataCopy, "isDisabled") ^ 1}];
  shareDuringEmergency = [dataCopy shareDuringEmergency];

  [v5 setShareDuringEmergencyCalls:shareDuringEmergency];
  [v5 updateSubviewsFromData];
}

- (UIEdgeInsets)separatorInset
{
  v2 = 999.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v2;
  result.top = v3;
  return result;
}

- (void)initInEditMode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKEmergencyCardSummaryTableItem.m" lineNumber:18 description:@"HKEmergencyCardSummaryTableItem does not support edit mode"];
}

@end